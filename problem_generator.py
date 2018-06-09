from __future__ import print_function

import errno
import os
import shutil
import sys
from subprocess import call

from collections import defaultdict

# VERSION SHOULD BE Python 3.6+

class NoClosingBraceError(Exception):
	pass

def find_closure(text, begin_idx):
	"""Given a piece of text and the index of an opening brace, return the index
	of its closing brace.
	"""
	curly_depth = 0

	text_after = text[begin_idx:]

	for idx, char in enumerate(text_after):
		if char == "{" and text_after[idx-1:idx+1] != "\\{":
			curly_depth += 1
		elif char == "}" and text_after[idx-1:idx+1] != "\\}":
			curly_depth -= 1
			if curly_depth == 0:
				end_idx = idx + begin_idx
				break
	else:
		# If we're here, we couldn't find a closing brace.
		raise NoClosingBraceError
	return end_idx

def gen_problems(input_file, verbose=False):
	"""Given an input file, parse it into individual problems.

	The beginning of a problem found with its tagged block, and the end with 
	that blocks closing braces.
	"""

	with open("{}.tex".format(input_file), 'r') as f:
		contents = f.read()

	begin_prob = r"%\tagged{"
	begin_len  = len(begin_prob)

	# end_prob   = r"}%}"
	# end_len    = len(end_prob)
	while begin_prob in contents:

		begin_tags_idx = contents.index(begin_prob)

		begin_tags_brace_idx = begin_tags_idx + begin_len - 1

		try:
			end_tags_brace_idx = find_closure(contents, begin_tags_brace_idx)
		except NoClosingBraceError:
			problematic_bit = text[tags_open_brace_idx:][:1000]
			error_statement = f"\nNo closing brace found for the _first_ part of the tagged block beginning\n{problematic_bit}"
			raise NoClosingBraceError(error_statement)

		
		begin_prob_brace_idx = end_tags_brace_idx + 1
		assert contents[begin_prob_brace_idx] == '{', \
			r"Tags formatting seems wrong. Should read '%\tagged{ etc }{' and so on!"

		try:
			end_prob_brace_idx = find_closure(contents, begin_prob_brace_idx)
		except NoClosingBraceError:
			error_statement = f"\nNo closing brace found for the _second_ part of the tagged block beginning\n{contents[begin_tags_brace_idx:][:1000]}"
			raise NoClosingBraceError(error_statement)	

		end_prob_idx = end_prob_brace_idx + 1

		problem  = contents[begin_tags_idx:end_prob_idx]
		contents = contents[end_prob_idx:]

		if any(line.strip() and line.lstrip()[0] != r'%' for line in problem.split('\n')):
			# Some line in the problem is not commented out.
			# Could also potentially remove comment lines.

			if verbose:
				ast = r"*"*13
				print(f"{ast}\n   PROBLEM   \n{ast}\n{problem}")
				print(f"{ast}\n     REST    \n{ast}\n{contents}")

			yield problem

def parse_problem(text, verbose=False):
	"""Given the complete problem, parse it into five pieces."""

	problem_dict = {'original':text}
	# `problem_dict['original']` is the complete string passed.

	########## Parse file ##########

	tags_begin = r"%\tagged{"
	tags_open_brace_idx = text.index(tags_begin) + len(tags_begin) - 1
	try:
		tags_close_brace_idx = find_closure(text, tags_open_brace_idx)
	except NoClosingBraceError:
		problematic_bit = text[tags_open_brace_idx:][:1000]
		error_statement = f"\nNo closing brace found for the _first_ part of the tagged block beginning\n{problematic_bit}"
		raise NoClosingBraceError(error_statement)
	problem_dict['tags'] = text[:tags_close_brace_idx+1]
	# `problem_dict['tags']` is the tagged block, e.g., "\tagged{...}"
	assert text[tags_close_brace_idx+1] == '{', r"Tags formatting seems wrong. Should read %\tagged{...}{problem_content}!"

	text = text[tags_close_brace_idx+1:]
	# `text` is now everything after, starting with the opening brace `{`.
	
	if verbose:
		ast = r"*"*13
		print(f"{ast}\n     tags    \n{ast}\n{problem_dict['tags']}")
		# print(f"{ast}\n     rest    \n{ast}\n{text}")

	# Note that we'll drop everything before the `\begin{sagesilent}` block.

	sagesilent_begin = r"\begin{sagesilent}"
	sagesilent_begin_idx = text.index(sagesilent_begin)

	if verbose:
		ast = r"*"*13
		print(f"{ast}\n   dropping  \n{ast}\n{text[:sagesilent_begin_idx]}")
		# print(f"{ast}\n     rest    \n{ast}\n{text[sagesilent_begin_idx:]}")

	text = text[sagesilent_begin_idx:]
	# `text` is now without anything before the sagesilent block.

	sagesilent_end = r"\end{sagesilent}"
	sagesilent_end_idx = text.index(sagesilent_end) + len(sagesilent_end)
	problem_dict['sage'] = text[:sagesilent_end_idx]
	# `problem_dict['sage']` is the whole "\begin{sagesilent}...\end{sagesilent}" block.
	text = text[sagesilent_end_idx:]
	# `text` is now without sagesilent block.

	if verbose:
		ast = r"*"*14
		print(f"{ast}\n  sagesilent  \n{ast}\n{problem_dict['sage']}")
		# print(f"{ast}\n     rest     \n{ast}\n{text}")
	
	# THIS MAY NEED TO GO!
	text = remove_comments(text)
	# This is necessary in case there are commented out braces in the problem content.

	latexprob_begin = r"\latexProblemContent{"
	latexprob_begin_idx = text.index(latexprob_begin)
	problem_dict['middle'] = text[:latexprob_begin_idx]
	# `problem_dict['middle']` is everything between the sagesilent block and the problem content.
	text = text[latexprob_begin_idx:]
	# `text` is now without middle.

	if verbose:
		ast = r"*"*14
		print(f"{ast}\n    middle    \n{ast}\n{problem_dict['middle']}")
		# print(f"{ast}\n     rest     \n{ast}\n{text}")

	del problem_dict['middle']

	latexprob_open_brace_idx = len(latexprob_begin) - 1
	try:
		latexprob_close_brace_idx = find_closure(text, latexprob_open_brace_idx)
	except NoClosingBraceError:
		problematic_bit = text[latexprob_open_brace_idx:][:1000]
		error_statement = f"\nNo closing brace found for the \latexProblemContent block beginning\n{problematic_bit}"
		raise NoClosingBraceError(error_statement)

	latexprob_end_idx = latexprob_close_brace_idx + 1 # We don't want to include the `%}` here.
	problem_dict['latexproblem'] = text[:latexprob_end_idx]
	# `problem_dict['latexproblem'] is the whole "\latexProblemContent{...}" block.
	text = text[latexprob_end_idx:]
	# `text` is now without problem content.

	if verbose:
		ast = r"*"*14
		print(f"{ast}\n latexproblem \n{ast}\n{problem_dict['latexproblem']}")
		print(f"{ast}\n     rest     \n{ast}\n{text}")

	problem_dict['footer'] = text
	# `problem_dict['footer']` is everything after the problem content.

	del problem_dict['footer']

	return problem_dict

def find_file_name(latex_problem):
	"""Given the `\latexProblemContent{...}` block, return the intended file name.


	"""
	input_begin = r"\input{"
	help_tex = r".HELP.tex"
	for line in latex_problem.splitlines():
		if help_tex in line:
			input_begin_idx = line.index(input_begin) + len(input_begin)
			input_end_idx   = line.index(help_tex)
			file_name = line[input_begin_idx:input_end_idx]
			break
	else:
		# If we're here, there was no `\input{_.HELP.tex}`.
		raise Exception(r"No file was input! Was the inputting of the help file commented out?")

	return file_name

def create_intermediate(problem, file_name, copies):
	preprocess_header = "\n".join( 
		[r"\documentclass{ximera}",
		 r"\usepackage{PackageLoader}",
		 r"\usepackage{sagetex}",
		 r"\renewcommand{\latexProblemContent}[1]{#1}",
		 r"\renewcommand{\sqrt}[2][2]{(#2)^{\frac{1}{#1}}}",
		 r"\begin{document}",
		 r"\input{Useful-Sage-Macros.tex}"])

	preprocess_footer = "\n".join( 
		[r"\end{document}"])

	create_help(file_name)
	# This will create the help file (if it doesn't exist).

	intermediate_file = f"INTERMEDIATE_{file_name}"

	one_sage_problem = "\n".join([problem['sage'],problem['latexproblem']])

	with open(f"{intermediate_file}.tex", 'w') as f:
		intermediate_contents = "\n".join([preprocess_header] + [one_sage_problem]*copies + [preprocess_footer])
		f.write(intermediate_contents)

	return file_name

def remove_comments(text, comment_char = r"%"):
	old_lines = text.split("\n")
	new_lines = []

	for line in old_lines:
		line_before, mid, line_after = line.partition(comment_char)
		new_lines.append(line_before)

	return "\n".join(new_lines)

def create_help(file_name):
	"""Create the help file if it doesn't exist."""
	help_tex = r".HELP.tex"
	help_file = file_name + help_tex

	with open(help_file,'a'):
		# This will open the help file in 'append mode', creating it if it doesn't exist.
		pass

def extract_replacements(file_name):
	"""Extract replacements from the .sagetex.sout file.
	"""
	with open(f"{file_name}.sagetex.sout", 'r') as f:
		sout_contents = f.readlines()

	ast = r"*"*10
	# print(f"{ast}\nSOUT:\n{ast}\n")
	# for line in sout_contents:
	# 	print(line,end="")

	replacements = []

	# print(f"{ast}\nLINES:\n{ast}\n")

	begin = r"\newlabel{@sageinline"
	begin_len = len(begin)
	end_braces = r"}{}{}{}{}}" + "\n"

	end_len = len(end_braces)
	for idx, line in enumerate(sout_contents):
		# print(line)
		# print(line[:21])

		if line[:begin_len] == begin:
			# print('success')
			next_line = sout_contents[idx+1]
			# print(next_line)
			# print(next_line[:-11])
			# print(next_line[-11:])
			assert next_line[-end_len:] == end_braces, f"Unexpected behavior in .sout!: {next_line[-end_len:]} is not {end_braces}"
			term = next_line[:-end_len]
			replacements.append(term)
	return replacements

def replace_sage(latex_problems, replacements):
	"""Replace instances of `\sage{...}` in each latex problem in 
	`latex_problems` with the provided `replacements` in order.
	"""
	# print("\n"*5)
	# print(latex_problems)
	# print("\n"*5)
	# print(replacements)
	# print("\n"*5)
	sage_begin = r"\sage{"

	for problem_idx, latex_problem in enumerate(latex_problems):
		while sage_begin in latex_problem:
			begin_idx = latex_problem.index(sage_begin)

			# Index of opening brace.
			begin_brace_idx = begin_idx + len(sage_begin) - 1

			# Index of closing brace
			try:
				close_brace_idx = find_closure(latex_problem, begin_brace_idx)
			except NoClosingBraceError:
				error_statement = f"\nVery strange: No closing brace found for a \sage variable, beginning\n{latex_problem[begin_brace_idx:][:1000]}"
			
			end_idx = close_brace_idx + 1

			replacement = replacements.pop(0)

			latex_problem = latex_problem[:begin_idx] + replacement + latex_problem[end_idx:]

		latex_problems[problem_idx] = latex_problem

	assert len(replacements) == 0, 'Not all replacements were used!'
	return latex_problems

def cleanup(intermediate_file):
	"""Delete files which are no longer needed."""
	itermediate_suffixes = ['.aux', '.ids', '.jax', '.log', '.oc', '.out', '.pdf', '.tex', \
							'.sagetex.sage', '.sagetex.sage.py', '.sagetex.scmd', '.sagetex.sout']
	files_to_remove = [intermediate_file+suffix for suffix in itermediate_suffixes]

	for file in files_to_remove:
		os.remove(file)

def parse_tags(tags_string):
	left_brace = tags_string.index("{")
	right_brace = tags_string.index("}")
	stripped = tags_string[left_brace+1:right_brace]
	split = [tag.strip() for tag in stripped.split(',')]

	tag_dict = defaultdict(list)
	for tag in split:
		assert tag.count("@") == 1, f"Hmm, one of the tags looks funny (fix this!): \"{tag}\""
		left, right = tag.split("@")
		tag_dict[left].append(right)

	return tag_dict

def create_file_name(tags_dict, verbose = False):
	fields = ['Topic', 'Type', 'File']
	for field in fields:
		l = len(tags_dict[field])
		assert l >= 1, f"No {field} given!"
		assert l <= 1, f"More than one {field} given: {tags_dict[field]}"

	s = "-".join(tags_dict[field][0] for field in fields)
	if verbose:
		print(f"Parsed the file name as: {s}")
	return s

def display_tags(tag_dict):
	s = ""
	for key, val_list in sorted(tag_dict.items()):
		s += f"% {key:10s}" + " : " + ", ".join(val_list) + "\n"
	return s

def postprocessing():
	"""Does nothing for now."""
	pass
	# postprocess_header = r"""\documentclass{ximera}
	# \usepackage{PackageLoader}
	# \renewcommand{\latexProblemContent}[1]{#1}
	# \begin{document}
	# """

	# postprocess_footer = r"""\end{document}
	# """
	# final_file = f"{file_name}_FINAL"
	# with open(f"{final_file}.tex", 'w') as f:
	# 	f.write(final_contents)

	# pdflatex_command_final = f"pdflatex {final_file}.tex"
	# # pdflatex_command_final += ">/dev/null" # Redirect output to nowhere. (run quietly)
	# print(pdflatex_command_final)
	# os.system(pdflatex_command_final)
	# open_command_final = f"open {final_file}.pdf"
	# print(open_command_final)
	# os.system(open_command_final)

def process_problem(text, input_file, destination_folder, folder = "",
	copies_initially = 1000, final_copies = 500, quiet = False, verbose = False):

	########## Setup: parse file, get its name, make intermediate files ##########

	problem = parse_problem(text, verbose=verbose)

	if verbose:
		for key, val in sorted(problem.items()):
			print(f"key={key}")
			print(f"val={val}")

	tags_dict = parse_tags(problem['tags'])
	file_name = create_file_name(tags_dict) # This is of the form "{Topic}-{Type}-{File}"

	intermediate_file = f"INTERMEDIATE_{file_name}"
	create_intermediate(problem, file_name, copies_initially)
	# This will create the intermediate files, namely the help file and the file to run pdflatex on.

	########## Run pdflatex and sage ##########

	pdflatex_command = "pdflatex "
	pdflatex_options = []

	if quiet:
		pdflatex_options.append(r">/dev/null 2>&1")
	
	pdflatex_options.append(f"{intermediate_file}.tex")
	pdflatex_command += " ".join(pdflatex_options) 
	
	print(pdflatex_command)
	os.system(pdflatex_command)

	sage_command = f"sage {intermediate_file}.sagetex.sage"
	if quiet:
		sage_command += " >/dev/null 2>&1" # Redirect output to nowhere. (run quietly)
	print(sage_command)
	os.system(sage_command)

	########## Extract and make replacements ##########

	one_final_problem = problem['latexproblem']
	problems = [one_final_problem] * copies_initially

	replacements = extract_replacements(intermediate_file)
	# Pull the list of sage replacements from the .sout file.

	final_problems = replace_sage(problems, replacements)
	# These are the \latexProblemContent{...} entries with the replacements made.

	final_problems = list(set(final_problems)) 
	# Removes duplicates.

	########## Put the finished problems together and cleanup ##########

	if len(final_problems) > final_copies:
		final_problems = final_problems[:final_copies]

	problem_separator = "\n\n" + "%"*22 + "\n\n"

	final_contents = problem['tags'] + r"{" + "\n"

	final_contents += problem_separator.join(final_problems) 
	final_contents += r"%}" 
	
	tex_file = f"{file_name}.tex"
	with open(tex_file, 'w') as f:
		f.write(final_contents)

	help_tex = r".HELP.tex"
	help_file = file_name + help_tex

	########## Write to input file ##########

	with open(input_file, 'a') as f:
		lines = []
		lines.append("")
		lines.append(problem['tags'][1:] + "{") # Omit the opening `%`
		lines.append("\t" + os.sep.join([destination_folder,folder,tex_file]))
		lines.append("}")
		lines.append("")
		
		f.write("\n".join(lines))

	cleanup(intermediate_file)

	return (tex_file, help_file)

def main(destination_folder = None, quiet = False, copies_initially = 1000, verbose = False):
	try:
		archetype_file = sys.argv[1]
		if archetype_file[-4:] == '.tex':
			# print(archetype_file)
			archetype_file = archetype_file[:-4]
			# print(archetype_file)
	except:
		# input_file = input("Enter name of file to process: ")
		raise Exception("Need a file to operate on!")

	begin = r"Question-List-Raw-"
	begin_len = len(begin)

	if archetype_file[:begin_len] == begin:
		folder = archetype_file[begin_len:]
	else:
		folder = archetype_file + "-Problems"

	if verbose:
		print(f"Destination folder = {destination_folder}")

	######## Make the folder in the current working directory ########

	try:
		os.mkdir(folder)
	except OSError as exc:
		if exc.errno != errno.EEXIST:
			raise
		pass

	######## Create the input file ########

	input_file = f'{folder}-Input.tex'

	if verbose:
		print(f"Input file = {input_file}")

	with open(input_file, 'w') as f:
		file_path = os.path.abspath(f"{archetype_file}.tex")

		header =     [r"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"]
		header.append(r"%%%%%%%%%%%%%%%%%%%%%%%%%%%				Header Contents				%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%")
		header.append(r"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%")
		header.append(r"")
		header.append(r"%Debug line. to activate this check, put \Verbosetrue at the start of a file calling this.")
		header.append(r"\ifVerbose{Input File Called: " + f"{file_path}" + r"}\fi")
		header.append(r"")
		header.append(r"")
		header.append(r"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%")
		header.append(r"%%%%%%%%%%%%%%%%%%%%%%%%%%%				File Contents				%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%")
		header.append(r"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%")
		header.append(r"")
		header.append(r"")
		f.write("\n".join(header))

	if destination_folder is None:
		cwd = os.getcwd()
		destination_folder = cwd

	######## Generate problems as a group, to catch errors early ########
	
	all_problems = list(gen_problems(archetype_file, verbose=verbose))

	######## Make the destination directories first ########

	try:
		os.mkdir(destination_folder)
	except OSError as exc:
		if exc.errno != errno.EEXIST:
			raise
		pass

	try: 
		os.mkdir(os.sep.join([destination_folder, folder]))
	except OSError as exc:
		if exc.errno != errno.EEXIST:
			raise
		pass

	######## Process problems, catching conflicts ########

	conflict_list = []

	for problem in all_problems:
		tex_file, help_file = process_problem(problem, input_file, destination_folder, \
			copies_initially = copies_initially, folder = folder, quiet = quiet, verbose = verbose)

		destination_tex  = os.sep.join([destination_folder,folder,tex_file])
		destination_help = os.sep.join([destination_folder,folder,help_file])

		if os.path.isfile(destination_tex):
			conflict_list.append((tex_file, destination_tex))
		else:
			os.rename(tex_file,  destination_tex)

		os.rename(help_file, destination_help)

	destination_input = os.sep.join([destination_folder,input_file])
	
	if os.path.isfile(destination_input):
		os.rename(input_file, destination_input)
	else:
		shutil.move(input_file, destination_folder)

	######## Resolve conflicts ########

	if conflict_list:
		conflict_list = sorted(conflict_list)
		do_all = False
		print(f"There were {len(conflict_list)} conflicts!")
		while conflict_list:
			conflict_src, conflict_dst = conflict_list.pop(0)
			if do_all:
				os.rename(conflict_src,  conflict_dst)
			else:
				choice = input(f"Would you like to overwrite {conflict_dst} with {conflict_src}? Enter 'yes' or 'no' for this one, and 'all' to overwrite the remaining {len(conflict_list)+1} conflicts:\n")
				choice = choice.lower()
				if choice == 'all':
					do_all = True
					print(f"Okay, overwriting each of the remaining {len(conflict_list)} conflicts.")
					os.rename(conflict_src,  conflict_dst)
				elif choice == 'yes':
					print(f"Okay, overwriting {conflict_dst} with {conflict_src} just this once.")
					os.rename(conflict_src,  conflict_dst)
				else:
					print(f"Okay, not overwriting {conflict_dst} with {conflict_src}.")

if __name__ == "__main__":

	# destination_folder = r"/home/jason/texmf/tex/latex/QuestionBanks/Problem-Bank"
	# quiet = False
	# copies_initially = 1000
	# verbose = False # Only use for debugging the problem parses and whatnot for now.

	# destination_folder = r"/Users/michaelengen/Dropbox/Xronos/My_Problem_Outputs"

	destination_folder = r"/root/texmf/tex/latex/QuestionBanks/Problem-Bank"
	quiet = True
	copies_initially = 600 
	verbose = False # Only use for debugging the problem parses and whatnot for now.

	main(destination_folder, quiet, copies_initially, verbose=verbose)



