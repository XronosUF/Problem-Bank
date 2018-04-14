#!/bin/sh

cd /home/jason/texmf/tex/latex/QuestionBanks/Problem-Bank/XronosOutput
#
# this file contains a group of xronosfmt runs that concatenate their output 
# into a single log file.  It was created by walking over a directory, finding 
# all the .tex files and outputting a line to run xronosfmt on that file.
#


echo xronosbatch run on `date` > xronosbatch.log


echo Processing FILE: TestBank-Compute-0048.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: TestBank-Compute-0048.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode TestBank-Compute-0048.tex  >> xronosbatch.log 2>&1 
if [ ! -e TestBank-Compute-0048.pdf ]; then
echo ERROR: Failed to create PDF: TestBank-Compute-0048.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: TestBank-Compute-0048.aux  >> xronosbatch.log 
rm TestBank-Compute-0048.aux  >> xronosbatch.log 2>&1
echo \# deleting file: TestBank-Compute-0048.ids  >> xronosbatch.log 
rm TestBank-Compute-0048.ids  >> xronosbatch.log 2>&1
echo \# deleting file: TestBank-Compute-0048.jax  >> xronosbatch.log 
rm TestBank-Compute-0048.jax  >> xronosbatch.log 2>&1
echo \# deleting file: TestBank-Compute-0048.log  >> xronosbatch.log 
rm TestBank-Compute-0048.log  >> xronosbatch.log 2>&1
echo \# deleting file: TestBank-Compute-0048.oc  >> xronosbatch.log 
rm TestBank-Compute-0048.oc  >> xronosbatch.log 2>&1
echo \# deleting file: TestBank-Compute-0048.out  >> xronosbatch.log 
rm TestBank-Compute-0048.out  >> xronosbatch.log 2>&1
echo \# deleting file: TestBank-Compute-0048.synctex.gz  >> xronosbatch.log 
rm TestBank-Compute-0048.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage TestBank-Compute-0048.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e TestBank-Compute-0048.sagetex.sout ]; then
echo ERROR: Failed to create sout: TestBank-Compute-0048.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: TestBank-Compute-0048.sagetex.sage  >> xronosbatch.log 
rm TestBank-Compute-0048.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: TestBank-Compute-0048.sagetex.sage.py  >> xronosbatch.log 
rm TestBank-Compute-0048.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: TestBank-Compute-0048.sagetex.scmd  >> xronosbatch.log 
rm TestBank-Compute-0048.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge TestBank-Compute-0048.tex  >> xronosbatch.log 2>&1 
xronosfmt TestBank-Compute-0048.tex  >> xronosbatch.log 2>&1 
xronosfinal TestBank-Compute-0048.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: TestBank-Compute-0048.pdf  >> xronosbatch.log 
rm TestBank-Compute-0048.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: TestBank-Compute-0048.sagetex.sout  >> xronosbatch.log 
rm TestBank-Compute-0048.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo ====================
echo ====== Errors ======
echo ====================
grep "ERROR: " xronosbatch.log
if [  $? = 0 ]; then 
echo -n Hit return to continue: 
read foo
fi
echo \#\#\# >> xronosbatch.log 
echo \#\#\#  Finished entire xronosbatch.sh run on `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
