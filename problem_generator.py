from __future__ import print_function

import os
import shutil
import sys
from subprocess import call

# VERSION SHOULD BE Python 3.6+

def find_closure(text, begin_idx):
	"""Given a piece of text and the index of an opening brace, return the index
	of its closing brace.
	"""
	curly_depth = 0
	ignore = False # We'll set this to be True when the characters we're looking at are commented out.
	for idx, char in enumerate(text[begin_idx:]):
		if char == "{":
			curly_depth += 1
		elif char == "}":
			curly_depth -= 1
			if curly_depth == 0:
				end_idx = idx + begin_idx
				break
	else:
		# If we're here, we couldn't find a closing brace.
		raise Exception("No closing brace found!")
	return end_idx


def gen_problems(input_file):
	with open("{}.tex".format(input_file), 'r') as f:
		contents = f.read()

	begin_prob = r"%\tagged{"
	begin_len  = len(begin_prob)
	end_prob   = r"}%}"
	end_len    = len(end_prob)
	while begin_prob in contents:

		begin_tags_idx = contents.index(begin_prob)

		begin_tags_brace_idx = begin_tags_idx + begin_len - 1

		end_tags_brace_idx = find_closure(contents, begin_tags_brace_idx)
		
		begin_prob_brace_idx = end_tags_brace_idx + 1
		assert contents[begin_prob_brace_idx] == '{', r"Tags formatting seems wrong. Should read %\tagged{...}{problem_content}!"

		end_prob_brace_idx = find_closure(contents, begin_prob_brace_idx)

		end_prob_idx = end_prob_brace_idx + 1

		problem  = contents[begin_tags_idx:end_prob_idx]
		contents = contents[end_prob_idx:]

		if any(line.strip() and line[0] != r'%' for line in problem.split('\n')):
			# Some line in the problem is not commented out.

			# ast = r"*"*13
			# print(f"{ast}\n   PROBLEM   \n{ast}\n{problem}")
			# print(f"{ast}\n     REST    \n{ast}\n{contents}")

			yield problem

def parse_problem(text):
	"""Given the complete problem, parse it into five pieces."""
	problem_dict = {'original':text}
	# `problem_dict['original']` is the complete string passed.

	########## Parse file ##########

	tags_begin = r"%\tagged{"
	tags_open_brace_idx = text.index(tags_begin) + len(tags_begin) - 1
	tags_close_brace_idx = find_closure(text, tags_open_brace_idx)
	problem_dict['tags'] = text[:tags_close_brace_idx+1]
	# `problem_dict['tags']` is the tagged block, e.g., "\tagged{...}"
	assert text[tags_close_brace_idx+1] == '{', r"Tags formatting seems wrong. Should read %\tagged{...}{problem_content}!"

	text = text[tags_close_brace_idx+1:]
	# `text` is now everything after, starting with the opening brace `{`.

	# Note that we'll drop everything before the `\begin{sagesilent}` block.

	sagesilent_begin = r"\begin{sagesilent}"
	sagesilent_begin_idx = text.index(sagesilent_begin)
	text = text[sagesilent_begin_idx:]
	# `text` is now without the tagged bit.

	sagesilent_end = r"\end{sagesilent}"
	sagesilent_end_idx = text.index(sagesilent_end) + len(sagesilent_end)
	problem_dict['sage'] = text[:sagesilent_end_idx]
	# `problem_dict['sage']` is the whole "\begin{sagesilent}...\end{sagesilent}" block.
	text = text[sagesilent_end_idx:]
	# `text` is now without sagesilent block.

	# print(f"BEFORE:\n{text}\nDONE!")
	
	text = remove_comments(text) 
	# This is necessary in case there are commented out braces in the problem content.
	
	# print(f"AFTER:\n{text}\nDONE!")

	latexprob_begin = r"\latexProblemContent{"
	latexprob_begin_idx = text.index(latexprob_begin)
	problem_dict['middle'] = text[:latexprob_begin_idx]
	# `problem_dict['middle']` is everything between the sagesilent block and the problem content.
	text = text[latexprob_begin_idx:]
	# `text` is now without middle.

	latexprob_open_brace_idx = len(latexprob_begin) - 1
	latexprob_close_brace_idx = find_closure(text, latexprob_open_brace_idx)

	latexprob_end_idx = latexprob_close_brace_idx + 1 # We don't want to include the `%}` here.
	problem_dict['latexproblem'] = text[:latexprob_end_idx]
	# `problem_dict['latexproblem'] is the whole "\latexProblemContent{...}" block.
	text = text[latexprob_end_idx:]
	# `text` is now without problem content.

	problem_dict['footer'] = text
	# `problem_dict['footer']` is everything after the problem content.

	# The footer is never used in practice.

	# ast = r"*"*10
	# print("{}\n    TAGS    \n{}\n{}".format(ast,ast,problem_dict['tags']))
	# print("{}\n SAGESILENT \n{}\n{}".format(ast,ast,problem_dict['sage']))
	# print("{}\n   MIDDLE   \n{}\n{}".format(ast,ast,problem_dict['middle']))
	# print("{}\nLATEXPROBLEM\n{}\n{}".format(ast,ast,problem_dict['latexproblem']))
	# print("{}\n   FOOTER   \n{}\n{}".format(ast,ast,problem_dict['footer']))

	return problem_dict

def find_file_name(latex_problem):
	"""Given the `\latexProblemContent{...}` block, return the intended file name. """
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
	preprocess_header = r"""\documentclass{ximera}
\usepackage{PackageLoader}
\usepackage{sagetex}
\renewcommand{\latexProblemContent}[1]{#1}
\renewcommand{\sqrt}[2][2]{(#2)^{\frac{1}{#1}}}
\begin{document}
\input{Useful-Sage-Macros.tex}
"""

	preprocess_footer = r"""
\end{document}
"""

	create_help(file_name)
	# This will create the help file (if it doesn't exist).

	intermediate_file = f"{file_name}_INTERMEDIATE"

	one_sage_problem = "\n".join([problem['sage'],problem['latexproblem']])

	with open(f"{intermediate_file}.tex", 'w') as f:
		intermediate_contents = "\n".join([preprocess_header] + [one_sage_problem]*copies + [preprocess_footer])
		f.write(intermediate_contents)

	return file_name

def remove_comments(text, comment_char = r"%"):
	old_lines = text.split("\n")
	new_lines = []

	for line in old_lines:
		if comment_char in line:
			comment_idx = line.index(comment_char)
			line = line[:comment_idx]

		new_lines.append(line)

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
			close_brace_idx = find_closure(latex_problem, begin_brace_idx)
			
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

def process_problem(text, input_file, destination_folder, folder = "", copies_initially = 1000, final_copies = 500, quiet = False):
	problem = parse_problem(text)

	# for key, val in sorted(problem.items()):
	# 	print(f"key={key}")
	# 	print(f"val={val}")
	
	file_name = find_file_name(problem['latexproblem'])

	intermediate_file = f"{file_name}_INTERMEDIATE"
	create_intermediate(problem, file_name, copies_initially)
	# This will create the itermediate files, namely the help file and the file to run pdflatex on.


	########## Run pdflatex and sage ##########

	pdflatex_command = "pdflatex "
	pdflatex_options = []

	if quiet:
		pdflatex_options += "-quiet"
	
	pdflatex_options.append(f"{intermediate_file}.tex")
	pdflatex_command += " ".join(pdflatex_options) 
	
	print(pdflatex_command)
	os.system(pdflatex_command)

	sage_command = f"sage {intermediate_file}.sagetex.sage"
	if quiet:
		sage_command += " >/dev/null" # Redirect output to nowhere. (run quietly)
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

	between = "\n\n" + r"%%%%%%%%%%%%%%%%%%%%%%" + "\n\n"
	final_contents = problem['tags'] + r"{" + "\n"
	final_contents += between.join(final_problems) 
	final_contents += r"%}"
	final_contents += problem['footer']
	
	file_tex = f"{file_name}.tex"
	with open(file_tex, 'w') as f:
		f.write(final_contents)

	help_tex = r".HELP.tex"
	help_file = file_name + help_tex

	os.rename(help_file, os.sep.join([folder,help_file]))
	os.rename(file_tex,  os.sep.join([folder,file_tex]))

	with open(input_file, 'a') as f:
		lines = []
		lines.append("")
		lines.append(problem['tags'][1:] + "{") # Omit the opening `%`
		lines.append("\t" + os.sep.join([destination_folder,folder,file_tex]))
		lines.append("}")
		lines.append("")
		
		f.write("\n".join(lines))

	cleanup(intermediate_file)

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

def main(destination_folder = None, quiet = False, copies_initially = 1000):
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

	# print(f"folder = {folder}")

	os.makedirs(folder, exist_ok=True)

	input_file = f'{folder}-Input.tex'
	# print(f"input_file = {input_file}")

	with open(input_file, 'w') as f:
		file_path = os.path.abspath(f"{archetype_file}.tex")

		header =     [r"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"]
		header.append(r"%%%%%%%%%%%%%%%%%%% 			Header Contents				%%%%%%%%%%%%%%%%%%%")
		header.append(r"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%")
		header.append(r"")
		header.append(r"%Debug line. to activate this check, put \Verbosetrue at the start of a file calling this.")
		header.append(r"\ifVerbose{Input File Called: " + f"{file_path}" + r"}\fi")
		header.append(r"")
		header.append(r"")
		header.append(r"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%")
		header.append(r"%%%%%%%%%%%%%%%%%%% 			File Contents				%%%%%%%%%%%%%%%%%%%")
		header.append(r"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%")
		header.append(r"")
		header.append(r"")
		f.write("\n".join(header))

	if destination_folder is None:
		cwd = os.getcwd()
		destination_folder = cwd

	for problem in gen_problems(archetype_file):
		process_problem(problem, input_file, destination_folder, copies_initially = copies_initially, folder = folder, quiet=quiet)

	shutil.rmtree(os.sep.join([destination_folder, folder]), ignore_errors=True)
	try:
		os.remove(os.sep.join([destination_folder, input_file]))
	except:
		pass

	os.makedirs(destination_folder, exist_ok=True)

	shutil.move(folder,     destination_folder)
	shutil.move(input_file, destination_folder)

if __name__ == "__main__":

	destination_folder = r"/home/jason/texmf/tex/latex/QuestionBanks/Problem-Bank"
	quiet = False
	copies_initially = 10

	main(destination_folder, quiet, copies_initially)



