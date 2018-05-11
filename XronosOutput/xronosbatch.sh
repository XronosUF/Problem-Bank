#!/bin/sh

cd /home/jason/texmf/tex/latex/QuestionBanks/Problem-Bank/XronosOutput
#
# this file contains a group of xronosfmt runs that concatenate their output 
# into a single log file.  It was created by walking over a directory, finding 
# all the .tex files and outputting a line to run xronosfmt on that file.
#


echo xronosbatch run on `date` > xronosbatch.log


echo Processing FILE: Integral-Compute-0011.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0011.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0011.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0011.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0011.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0011.aux  >> xronosbatch.log 
rm Integral-Compute-0011.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0011.ids  >> xronosbatch.log 
rm Integral-Compute-0011.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0011.jax  >> xronosbatch.log 
rm Integral-Compute-0011.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0011.log  >> xronosbatch.log 
rm Integral-Compute-0011.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0011.oc  >> xronosbatch.log 
rm Integral-Compute-0011.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0011.out  >> xronosbatch.log 
rm Integral-Compute-0011.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0011.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0011.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0011.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0011.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0011.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0011.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0011.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0011.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0011.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0011.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0011.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0011.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0011.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0011.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0011.pdf  >> xronosbatch.log 
rm Integral-Compute-0011.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0011.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0011.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0027.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0027.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0027.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0027.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0027.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0027.aux  >> xronosbatch.log 
rm Integral-Compute-0027.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0027.ids  >> xronosbatch.log 
rm Integral-Compute-0027.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0027.jax  >> xronosbatch.log 
rm Integral-Compute-0027.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0027.log  >> xronosbatch.log 
rm Integral-Compute-0027.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0027.oc  >> xronosbatch.log 
rm Integral-Compute-0027.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0027.out  >> xronosbatch.log 
rm Integral-Compute-0027.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0027.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0027.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0027.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0027.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0027.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0027.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0027.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0027.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0027.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0027.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0027.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0027.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0027.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0027.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0027.pdf  >> xronosbatch.log 
rm Integral-Compute-0027.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0027.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0027.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0080.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0080.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0080.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0080.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0080.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0080.aux  >> xronosbatch.log 
rm Integral-Compute-0080.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0080.ids  >> xronosbatch.log 
rm Integral-Compute-0080.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0080.jax  >> xronosbatch.log 
rm Integral-Compute-0080.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0080.log  >> xronosbatch.log 
rm Integral-Compute-0080.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0080.oc  >> xronosbatch.log 
rm Integral-Compute-0080.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0080.out  >> xronosbatch.log 
rm Integral-Compute-0080.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0080.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0080.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0080.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0080.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0080.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0080.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0080.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0080.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0080.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0080.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0080.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0080.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0080.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0080.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0080.pdf  >> xronosbatch.log 
rm Integral-Compute-0080.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0080.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0080.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0003.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0003.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0003.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0003.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0003.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0003.aux  >> xronosbatch.log 
rm Integral-Compute-0003.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0003.ids  >> xronosbatch.log 
rm Integral-Compute-0003.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0003.jax  >> xronosbatch.log 
rm Integral-Compute-0003.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0003.log  >> xronosbatch.log 
rm Integral-Compute-0003.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0003.oc  >> xronosbatch.log 
rm Integral-Compute-0003.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0003.out  >> xronosbatch.log 
rm Integral-Compute-0003.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0003.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0003.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0003.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0003.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0003.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0003.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0003.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0003.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0003.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0003.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0003.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0003.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0003.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0003.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0003.pdf  >> xronosbatch.log 
rm Integral-Compute-0003.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0003.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0003.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0001.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0001.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0001.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0001.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0001.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0001.aux  >> xronosbatch.log 
rm Integral-Compute-0001.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0001.ids  >> xronosbatch.log 
rm Integral-Compute-0001.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0001.jax  >> xronosbatch.log 
rm Integral-Compute-0001.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0001.log  >> xronosbatch.log 
rm Integral-Compute-0001.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0001.oc  >> xronosbatch.log 
rm Integral-Compute-0001.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0001.out  >> xronosbatch.log 
rm Integral-Compute-0001.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0001.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0001.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0001.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0001.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0001.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0001.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0001.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0001.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0001.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0001.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0001.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0001.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0001.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0001.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0001.pdf  >> xronosbatch.log 
rm Integral-Compute-0001.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0001.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0001.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0079.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0079.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0079.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0079.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0079.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0079.aux  >> xronosbatch.log 
rm Integral-Compute-0079.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0079.ids  >> xronosbatch.log 
rm Integral-Compute-0079.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0079.jax  >> xronosbatch.log 
rm Integral-Compute-0079.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0079.log  >> xronosbatch.log 
rm Integral-Compute-0079.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0079.oc  >> xronosbatch.log 
rm Integral-Compute-0079.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0079.out  >> xronosbatch.log 
rm Integral-Compute-0079.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0079.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0079.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0079.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0079.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0079.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0079.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0079.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0079.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0079.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0079.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0079.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0079.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0079.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0079.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0079.pdf  >> xronosbatch.log 
rm Integral-Compute-0079.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0079.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0079.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0042.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0042.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0042.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0042.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0042.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0042.aux  >> xronosbatch.log 
rm Integral-Compute-0042.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0042.ids  >> xronosbatch.log 
rm Integral-Compute-0042.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0042.jax  >> xronosbatch.log 
rm Integral-Compute-0042.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0042.log  >> xronosbatch.log 
rm Integral-Compute-0042.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0042.oc  >> xronosbatch.log 
rm Integral-Compute-0042.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0042.out  >> xronosbatch.log 
rm Integral-Compute-0042.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0042.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0042.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0042.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0042.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0042.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0042.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0042.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0042.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0042.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0042.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0042.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0042.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0042.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0042.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0042.pdf  >> xronosbatch.log 
rm Integral-Compute-0042.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0042.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0042.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0006.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0006.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0006.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0006.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0006.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0006.aux  >> xronosbatch.log 
rm Integral-Compute-0006.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0006.ids  >> xronosbatch.log 
rm Integral-Compute-0006.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0006.jax  >> xronosbatch.log 
rm Integral-Compute-0006.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0006.log  >> xronosbatch.log 
rm Integral-Compute-0006.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0006.oc  >> xronosbatch.log 
rm Integral-Compute-0006.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0006.out  >> xronosbatch.log 
rm Integral-Compute-0006.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0006.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0006.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0006.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0006.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0006.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0006.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0006.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0006.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0006.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0006.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0006.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0006.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0006.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0006.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0006.pdf  >> xronosbatch.log 
rm Integral-Compute-0006.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0006.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0006.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0007.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0007.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0007.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0007.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0007.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0007.aux  >> xronosbatch.log 
rm Integral-Compute-0007.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0007.ids  >> xronosbatch.log 
rm Integral-Compute-0007.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0007.jax  >> xronosbatch.log 
rm Integral-Compute-0007.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0007.log  >> xronosbatch.log 
rm Integral-Compute-0007.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0007.oc  >> xronosbatch.log 
rm Integral-Compute-0007.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0007.out  >> xronosbatch.log 
rm Integral-Compute-0007.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0007.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0007.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0007.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0007.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0007.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0007.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0007.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0007.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0007.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0007.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0007.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0007.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0007.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0007.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0007.pdf  >> xronosbatch.log 
rm Integral-Compute-0007.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0007.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0007.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0054.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0054.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0054.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0054.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0054.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0054.aux  >> xronosbatch.log 
rm Integral-Compute-0054.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0054.ids  >> xronosbatch.log 
rm Integral-Compute-0054.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0054.jax  >> xronosbatch.log 
rm Integral-Compute-0054.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0054.log  >> xronosbatch.log 
rm Integral-Compute-0054.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0054.oc  >> xronosbatch.log 
rm Integral-Compute-0054.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0054.out  >> xronosbatch.log 
rm Integral-Compute-0054.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0054.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0054.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0054.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0054.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0054.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0054.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0054.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0054.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0054.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0054.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0054.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0054.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0054.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0054.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0054.pdf  >> xronosbatch.log 
rm Integral-Compute-0054.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0054.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0054.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0017.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0017.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0017.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0017.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0017.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0017.aux  >> xronosbatch.log 
rm Integral-Compute-0017.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0017.ids  >> xronosbatch.log 
rm Integral-Compute-0017.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0017.jax  >> xronosbatch.log 
rm Integral-Compute-0017.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0017.log  >> xronosbatch.log 
rm Integral-Compute-0017.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0017.oc  >> xronosbatch.log 
rm Integral-Compute-0017.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0017.out  >> xronosbatch.log 
rm Integral-Compute-0017.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0017.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0017.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0017.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0017.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0017.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0017.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0017.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0017.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0017.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0017.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0017.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0017.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0017.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0017.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0017.pdf  >> xronosbatch.log 
rm Integral-Compute-0017.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0017.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0017.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0024.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0024.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0024.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0024.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0024.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0024.aux  >> xronosbatch.log 
rm Integral-Compute-0024.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0024.ids  >> xronosbatch.log 
rm Integral-Compute-0024.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0024.jax  >> xronosbatch.log 
rm Integral-Compute-0024.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0024.log  >> xronosbatch.log 
rm Integral-Compute-0024.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0024.oc  >> xronosbatch.log 
rm Integral-Compute-0024.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0024.out  >> xronosbatch.log 
rm Integral-Compute-0024.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0024.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0024.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0024.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0024.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0024.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0024.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0024.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0024.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0024.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0024.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0024.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0024.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0024.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0024.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0024.pdf  >> xronosbatch.log 
rm Integral-Compute-0024.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0024.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0024.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0029.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0029.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0029.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0029.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0029.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0029.aux  >> xronosbatch.log 
rm Integral-Compute-0029.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0029.ids  >> xronosbatch.log 
rm Integral-Compute-0029.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0029.jax  >> xronosbatch.log 
rm Integral-Compute-0029.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0029.log  >> xronosbatch.log 
rm Integral-Compute-0029.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0029.oc  >> xronosbatch.log 
rm Integral-Compute-0029.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0029.out  >> xronosbatch.log 
rm Integral-Compute-0029.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0029.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0029.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0029.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0029.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0029.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0029.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0029.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0029.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0029.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0029.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0029.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0029.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0029.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0029.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0029.pdf  >> xronosbatch.log 
rm Integral-Compute-0029.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0029.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0029.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0025.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0025.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0025.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0025.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0025.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0025.aux  >> xronosbatch.log 
rm Integral-Compute-0025.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0025.ids  >> xronosbatch.log 
rm Integral-Compute-0025.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0025.jax  >> xronosbatch.log 
rm Integral-Compute-0025.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0025.log  >> xronosbatch.log 
rm Integral-Compute-0025.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0025.oc  >> xronosbatch.log 
rm Integral-Compute-0025.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0025.out  >> xronosbatch.log 
rm Integral-Compute-0025.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0025.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0025.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0025.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0025.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0025.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0025.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0025.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0025.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0025.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0025.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0025.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0025.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0025.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0025.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0025.pdf  >> xronosbatch.log 
rm Integral-Compute-0025.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0025.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0025.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0004.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0004.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0004.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0004.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0004.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0004.aux  >> xronosbatch.log 
rm Integral-Compute-0004.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0004.ids  >> xronosbatch.log 
rm Integral-Compute-0004.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0004.jax  >> xronosbatch.log 
rm Integral-Compute-0004.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0004.log  >> xronosbatch.log 
rm Integral-Compute-0004.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0004.oc  >> xronosbatch.log 
rm Integral-Compute-0004.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0004.out  >> xronosbatch.log 
rm Integral-Compute-0004.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0004.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0004.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0004.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0004.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0004.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0004.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0004.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0004.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0004.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0004.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0004.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0004.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0004.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0004.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0004.pdf  >> xronosbatch.log 
rm Integral-Compute-0004.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0004.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0004.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0028.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0028.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0028.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0028.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0028.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0028.aux  >> xronosbatch.log 
rm Integral-Compute-0028.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0028.ids  >> xronosbatch.log 
rm Integral-Compute-0028.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0028.jax  >> xronosbatch.log 
rm Integral-Compute-0028.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0028.log  >> xronosbatch.log 
rm Integral-Compute-0028.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0028.oc  >> xronosbatch.log 
rm Integral-Compute-0028.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0028.out  >> xronosbatch.log 
rm Integral-Compute-0028.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0028.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0028.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0028.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0028.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0028.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0028.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0028.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0028.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0028.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0028.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0028.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0028.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0028.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0028.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0028.pdf  >> xronosbatch.log 
rm Integral-Compute-0028.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0028.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0028.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0005.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0005.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0005.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0005.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0005.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0005.aux  >> xronosbatch.log 
rm Integral-Compute-0005.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0005.ids  >> xronosbatch.log 
rm Integral-Compute-0005.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0005.jax  >> xronosbatch.log 
rm Integral-Compute-0005.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0005.log  >> xronosbatch.log 
rm Integral-Compute-0005.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0005.oc  >> xronosbatch.log 
rm Integral-Compute-0005.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0005.out  >> xronosbatch.log 
rm Integral-Compute-0005.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0005.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0005.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0005.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0005.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0005.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0005.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0005.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0005.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0005.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0005.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0005.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0005.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0005.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0005.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0005.pdf  >> xronosbatch.log 
rm Integral-Compute-0005.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0005.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0005.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0049.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0049.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0049.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0049.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0049.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0049.aux  >> xronosbatch.log 
rm Integral-Compute-0049.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0049.ids  >> xronosbatch.log 
rm Integral-Compute-0049.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0049.jax  >> xronosbatch.log 
rm Integral-Compute-0049.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0049.log  >> xronosbatch.log 
rm Integral-Compute-0049.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0049.oc  >> xronosbatch.log 
rm Integral-Compute-0049.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0049.out  >> xronosbatch.log 
rm Integral-Compute-0049.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0049.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0049.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0049.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0049.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0049.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0049.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0049.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0049.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0049.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0049.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0049.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0049.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0049.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0049.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0049.pdf  >> xronosbatch.log 
rm Integral-Compute-0049.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0049.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0049.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0065.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0065.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0065.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0065.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0065.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0065.aux  >> xronosbatch.log 
rm Integral-Compute-0065.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0065.ids  >> xronosbatch.log 
rm Integral-Compute-0065.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0065.jax  >> xronosbatch.log 
rm Integral-Compute-0065.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0065.log  >> xronosbatch.log 
rm Integral-Compute-0065.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0065.oc  >> xronosbatch.log 
rm Integral-Compute-0065.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0065.out  >> xronosbatch.log 
rm Integral-Compute-0065.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0065.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0065.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0065.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0065.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0065.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0065.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0065.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0065.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0065.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0065.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0065.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0065.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0065.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0065.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0065.pdf  >> xronosbatch.log 
rm Integral-Compute-0065.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0065.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0065.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0009.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0009.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0009.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0009.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0009.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0009.aux  >> xronosbatch.log 
rm Integral-Compute-0009.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0009.ids  >> xronosbatch.log 
rm Integral-Compute-0009.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0009.jax  >> xronosbatch.log 
rm Integral-Compute-0009.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0009.log  >> xronosbatch.log 
rm Integral-Compute-0009.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0009.oc  >> xronosbatch.log 
rm Integral-Compute-0009.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0009.out  >> xronosbatch.log 
rm Integral-Compute-0009.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0009.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0009.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0009.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0009.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0009.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0009.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0009.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0009.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0009.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0009.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0009.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0009.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0009.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0009.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0009.pdf  >> xronosbatch.log 
rm Integral-Compute-0009.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0009.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0009.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0051.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0051.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0051.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0051.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0051.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0051.aux  >> xronosbatch.log 
rm Integral-Compute-0051.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0051.ids  >> xronosbatch.log 
rm Integral-Compute-0051.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0051.jax  >> xronosbatch.log 
rm Integral-Compute-0051.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0051.log  >> xronosbatch.log 
rm Integral-Compute-0051.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0051.oc  >> xronosbatch.log 
rm Integral-Compute-0051.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0051.out  >> xronosbatch.log 
rm Integral-Compute-0051.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0051.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0051.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0051.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0051.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0051.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0051.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0051.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0051.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0051.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0051.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0051.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0051.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0051.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0051.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0051.pdf  >> xronosbatch.log 
rm Integral-Compute-0051.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0051.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0051.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0012.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0012.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0012.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0012.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0012.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0012.aux  >> xronosbatch.log 
rm Integral-Compute-0012.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0012.ids  >> xronosbatch.log 
rm Integral-Compute-0012.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0012.jax  >> xronosbatch.log 
rm Integral-Compute-0012.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0012.log  >> xronosbatch.log 
rm Integral-Compute-0012.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0012.oc  >> xronosbatch.log 
rm Integral-Compute-0012.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0012.out  >> xronosbatch.log 
rm Integral-Compute-0012.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0012.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0012.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0012.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0012.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0012.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0012.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0012.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0012.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0012.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0012.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0012.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0012.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0012.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0012.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0012.pdf  >> xronosbatch.log 
rm Integral-Compute-0012.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0012.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0012.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0055.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0055.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0055.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0055.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0055.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0055.aux  >> xronosbatch.log 
rm Integral-Compute-0055.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0055.ids  >> xronosbatch.log 
rm Integral-Compute-0055.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0055.jax  >> xronosbatch.log 
rm Integral-Compute-0055.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0055.log  >> xronosbatch.log 
rm Integral-Compute-0055.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0055.oc  >> xronosbatch.log 
rm Integral-Compute-0055.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0055.out  >> xronosbatch.log 
rm Integral-Compute-0055.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0055.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0055.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0055.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0055.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0055.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0055.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0055.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0055.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0055.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0055.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0055.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0055.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0055.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0055.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0055.pdf  >> xronosbatch.log 
rm Integral-Compute-0055.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0055.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0055.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0071.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0071.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0071.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0071.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0071.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0071.aux  >> xronosbatch.log 
rm Integral-Compute-0071.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0071.ids  >> xronosbatch.log 
rm Integral-Compute-0071.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0071.jax  >> xronosbatch.log 
rm Integral-Compute-0071.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0071.log  >> xronosbatch.log 
rm Integral-Compute-0071.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0071.oc  >> xronosbatch.log 
rm Integral-Compute-0071.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0071.out  >> xronosbatch.log 
rm Integral-Compute-0071.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0071.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0071.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0071.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0071.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0071.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0071.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0071.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0071.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0071.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0071.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0071.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0071.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0071.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0071.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0071.pdf  >> xronosbatch.log 
rm Integral-Compute-0071.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0071.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0071.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0078.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0078.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0078.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0078.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0078.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0078.aux  >> xronosbatch.log 
rm Integral-Compute-0078.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0078.ids  >> xronosbatch.log 
rm Integral-Compute-0078.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0078.jax  >> xronosbatch.log 
rm Integral-Compute-0078.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0078.log  >> xronosbatch.log 
rm Integral-Compute-0078.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0078.oc  >> xronosbatch.log 
rm Integral-Compute-0078.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0078.out  >> xronosbatch.log 
rm Integral-Compute-0078.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0078.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0078.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0078.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0078.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0078.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0078.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0078.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0078.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0078.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0078.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0078.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0078.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0078.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0078.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0078.pdf  >> xronosbatch.log 
rm Integral-Compute-0078.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0078.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0078.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0066.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0066.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0066.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0066.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0066.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0066.aux  >> xronosbatch.log 
rm Integral-Compute-0066.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0066.ids  >> xronosbatch.log 
rm Integral-Compute-0066.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0066.jax  >> xronosbatch.log 
rm Integral-Compute-0066.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0066.log  >> xronosbatch.log 
rm Integral-Compute-0066.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0066.oc  >> xronosbatch.log 
rm Integral-Compute-0066.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0066.out  >> xronosbatch.log 
rm Integral-Compute-0066.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0066.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0066.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0066.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0066.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0066.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0066.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0066.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0066.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0066.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0066.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0066.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0066.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0066.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0066.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0066.pdf  >> xronosbatch.log 
rm Integral-Compute-0066.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0066.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0066.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0008.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0008.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0008.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0008.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0008.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0008.aux  >> xronosbatch.log 
rm Integral-Compute-0008.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0008.ids  >> xronosbatch.log 
rm Integral-Compute-0008.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0008.jax  >> xronosbatch.log 
rm Integral-Compute-0008.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0008.log  >> xronosbatch.log 
rm Integral-Compute-0008.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0008.oc  >> xronosbatch.log 
rm Integral-Compute-0008.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0008.out  >> xronosbatch.log 
rm Integral-Compute-0008.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0008.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0008.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0008.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0008.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0008.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0008.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0008.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0008.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0008.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0008.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0008.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0008.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0008.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0008.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0008.pdf  >> xronosbatch.log 
rm Integral-Compute-0008.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0008.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0008.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0002.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0002.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0002.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0002.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0002.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0002.aux  >> xronosbatch.log 
rm Integral-Compute-0002.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0002.ids  >> xronosbatch.log 
rm Integral-Compute-0002.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0002.jax  >> xronosbatch.log 
rm Integral-Compute-0002.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0002.log  >> xronosbatch.log 
rm Integral-Compute-0002.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0002.oc  >> xronosbatch.log 
rm Integral-Compute-0002.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0002.out  >> xronosbatch.log 
rm Integral-Compute-0002.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0002.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0002.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0002.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0002.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0002.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0002.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0002.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0002.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0002.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0002.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0002.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0002.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0002.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0002.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0002.pdf  >> xronosbatch.log 
rm Integral-Compute-0002.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0002.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0002.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0053.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0053.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0053.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0053.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0053.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0053.aux  >> xronosbatch.log 
rm Integral-Compute-0053.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0053.ids  >> xronosbatch.log 
rm Integral-Compute-0053.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0053.jax  >> xronosbatch.log 
rm Integral-Compute-0053.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0053.log  >> xronosbatch.log 
rm Integral-Compute-0053.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0053.oc  >> xronosbatch.log 
rm Integral-Compute-0053.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0053.out  >> xronosbatch.log 
rm Integral-Compute-0053.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0053.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0053.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0053.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0053.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0053.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0053.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0053.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0053.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0053.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0053.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0053.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0053.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0053.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0053.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0053.pdf  >> xronosbatch.log 
rm Integral-Compute-0053.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0053.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0053.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0019.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0019.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0019.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0019.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0019.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0019.aux  >> xronosbatch.log 
rm Integral-Compute-0019.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0019.ids  >> xronosbatch.log 
rm Integral-Compute-0019.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0019.jax  >> xronosbatch.log 
rm Integral-Compute-0019.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0019.log  >> xronosbatch.log 
rm Integral-Compute-0019.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0019.oc  >> xronosbatch.log 
rm Integral-Compute-0019.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0019.out  >> xronosbatch.log 
rm Integral-Compute-0019.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0019.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0019.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0019.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0019.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0019.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0019.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0019.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0019.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0019.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0019.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0019.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0019.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0019.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0019.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0019.pdf  >> xronosbatch.log 
rm Integral-Compute-0019.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0019.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0019.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0038.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0038.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0038.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0038.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0038.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0038.aux  >> xronosbatch.log 
rm Integral-Compute-0038.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0038.ids  >> xronosbatch.log 
rm Integral-Compute-0038.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0038.jax  >> xronosbatch.log 
rm Integral-Compute-0038.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0038.log  >> xronosbatch.log 
rm Integral-Compute-0038.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0038.oc  >> xronosbatch.log 
rm Integral-Compute-0038.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0038.out  >> xronosbatch.log 
rm Integral-Compute-0038.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0038.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0038.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0038.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0038.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0038.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0038.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0038.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0038.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0038.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0038.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0038.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0038.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0038.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0038.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0038.pdf  >> xronosbatch.log 
rm Integral-Compute-0038.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0038.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0038.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0067.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0067.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0067.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0067.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0067.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0067.aux  >> xronosbatch.log 
rm Integral-Compute-0067.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0067.ids  >> xronosbatch.log 
rm Integral-Compute-0067.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0067.jax  >> xronosbatch.log 
rm Integral-Compute-0067.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0067.log  >> xronosbatch.log 
rm Integral-Compute-0067.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0067.oc  >> xronosbatch.log 
rm Integral-Compute-0067.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0067.out  >> xronosbatch.log 
rm Integral-Compute-0067.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0067.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0067.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0067.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0067.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0067.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0067.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0067.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0067.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0067.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0067.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0067.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0067.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0067.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0067.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0067.pdf  >> xronosbatch.log 
rm Integral-Compute-0067.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0067.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0067.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0069.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0069.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0069.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0069.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0069.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0069.aux  >> xronosbatch.log 
rm Integral-Compute-0069.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0069.ids  >> xronosbatch.log 
rm Integral-Compute-0069.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0069.jax  >> xronosbatch.log 
rm Integral-Compute-0069.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0069.log  >> xronosbatch.log 
rm Integral-Compute-0069.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0069.oc  >> xronosbatch.log 
rm Integral-Compute-0069.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0069.out  >> xronosbatch.log 
rm Integral-Compute-0069.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0069.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0069.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0069.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0069.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0069.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0069.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0069.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0069.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0069.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0069.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0069.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0069.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0069.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0069.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0069.pdf  >> xronosbatch.log 
rm Integral-Compute-0069.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0069.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0069.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Concept-0002.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Concept-0002.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Concept-0002.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Concept-0002.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Concept-0002.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Concept-0002.aux  >> xronosbatch.log 
rm Integral-Concept-0002.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Concept-0002.ids  >> xronosbatch.log 
rm Integral-Concept-0002.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Concept-0002.jax  >> xronosbatch.log 
rm Integral-Concept-0002.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Concept-0002.log  >> xronosbatch.log 
rm Integral-Concept-0002.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Concept-0002.oc  >> xronosbatch.log 
rm Integral-Concept-0002.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Concept-0002.out  >> xronosbatch.log 
rm Integral-Concept-0002.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Concept-0002.synctex.gz  >> xronosbatch.log 
rm Integral-Concept-0002.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Concept-0002.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Concept-0002.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Concept-0002.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Concept-0002.sagetex.sage  >> xronosbatch.log 
rm Integral-Concept-0002.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Concept-0002.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Concept-0002.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Concept-0002.sagetex.scmd  >> xronosbatch.log 
rm Integral-Concept-0002.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Concept-0002.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Concept-0002.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Concept-0002.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Concept-0002.pdf  >> xronosbatch.log 
rm Integral-Concept-0002.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Concept-0002.sagetex.sout  >> xronosbatch.log 
rm Integral-Concept-0002.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0052.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0052.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0052.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0052.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0052.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0052.aux  >> xronosbatch.log 
rm Integral-Compute-0052.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0052.ids  >> xronosbatch.log 
rm Integral-Compute-0052.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0052.jax  >> xronosbatch.log 
rm Integral-Compute-0052.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0052.log  >> xronosbatch.log 
rm Integral-Compute-0052.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0052.oc  >> xronosbatch.log 
rm Integral-Compute-0052.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0052.out  >> xronosbatch.log 
rm Integral-Compute-0052.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0052.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0052.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0052.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0052.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0052.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0052.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0052.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0052.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0052.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0052.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0052.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0052.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0052.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0052.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0052.pdf  >> xronosbatch.log 
rm Integral-Compute-0052.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0052.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0052.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0068.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0068.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0068.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0068.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0068.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0068.aux  >> xronosbatch.log 
rm Integral-Compute-0068.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0068.ids  >> xronosbatch.log 
rm Integral-Compute-0068.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0068.jax  >> xronosbatch.log 
rm Integral-Compute-0068.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0068.log  >> xronosbatch.log 
rm Integral-Compute-0068.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0068.oc  >> xronosbatch.log 
rm Integral-Compute-0068.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0068.out  >> xronosbatch.log 
rm Integral-Compute-0068.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0068.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0068.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0068.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0068.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0068.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0068.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0068.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0068.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0068.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0068.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0068.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0068.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0068.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0068.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0068.pdf  >> xronosbatch.log 
rm Integral-Compute-0068.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0068.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0068.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0064.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0064.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0064.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0064.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0064.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0064.aux  >> xronosbatch.log 
rm Integral-Compute-0064.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0064.ids  >> xronosbatch.log 
rm Integral-Compute-0064.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0064.jax  >> xronosbatch.log 
rm Integral-Compute-0064.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0064.log  >> xronosbatch.log 
rm Integral-Compute-0064.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0064.oc  >> xronosbatch.log 
rm Integral-Compute-0064.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0064.out  >> xronosbatch.log 
rm Integral-Compute-0064.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0064.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0064.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0064.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0064.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0064.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0064.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0064.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0064.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0064.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0064.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0064.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0064.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0064.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0064.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0064.pdf  >> xronosbatch.log 
rm Integral-Compute-0064.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0064.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0064.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0057.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0057.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0057.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0057.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0057.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0057.aux  >> xronosbatch.log 
rm Integral-Compute-0057.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0057.ids  >> xronosbatch.log 
rm Integral-Compute-0057.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0057.jax  >> xronosbatch.log 
rm Integral-Compute-0057.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0057.log  >> xronosbatch.log 
rm Integral-Compute-0057.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0057.oc  >> xronosbatch.log 
rm Integral-Compute-0057.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0057.out  >> xronosbatch.log 
rm Integral-Compute-0057.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0057.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0057.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0057.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0057.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0057.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0057.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0057.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0057.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0057.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0057.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0057.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0057.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0057.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0057.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0057.pdf  >> xronosbatch.log 
rm Integral-Compute-0057.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0057.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0057.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0072.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0072.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0072.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0072.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0072.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0072.aux  >> xronosbatch.log 
rm Integral-Compute-0072.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0072.ids  >> xronosbatch.log 
rm Integral-Compute-0072.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0072.jax  >> xronosbatch.log 
rm Integral-Compute-0072.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0072.log  >> xronosbatch.log 
rm Integral-Compute-0072.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0072.oc  >> xronosbatch.log 
rm Integral-Compute-0072.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0072.out  >> xronosbatch.log 
rm Integral-Compute-0072.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0072.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0072.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0072.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0072.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0072.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0072.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0072.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0072.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0072.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0072.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0072.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0072.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0072.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0072.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0072.pdf  >> xronosbatch.log 
rm Integral-Compute-0072.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0072.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0072.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0010.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0010.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0010.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0010.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0010.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0010.aux  >> xronosbatch.log 
rm Integral-Compute-0010.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0010.ids  >> xronosbatch.log 
rm Integral-Compute-0010.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0010.jax  >> xronosbatch.log 
rm Integral-Compute-0010.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0010.log  >> xronosbatch.log 
rm Integral-Compute-0010.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0010.oc  >> xronosbatch.log 
rm Integral-Compute-0010.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0010.out  >> xronosbatch.log 
rm Integral-Compute-0010.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0010.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0010.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0010.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0010.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0010.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0010.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0010.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0010.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0010.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0010.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0010.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0010.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0010.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0010.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0010.pdf  >> xronosbatch.log 
rm Integral-Compute-0010.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0010.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0010.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0062.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0062.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0062.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0062.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0062.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0062.aux  >> xronosbatch.log 
rm Integral-Compute-0062.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0062.ids  >> xronosbatch.log 
rm Integral-Compute-0062.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0062.jax  >> xronosbatch.log 
rm Integral-Compute-0062.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0062.log  >> xronosbatch.log 
rm Integral-Compute-0062.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0062.oc  >> xronosbatch.log 
rm Integral-Compute-0062.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0062.out  >> xronosbatch.log 
rm Integral-Compute-0062.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0062.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0062.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0062.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0062.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0062.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0062.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0062.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0062.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0062.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0062.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0062.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0062.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0062.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0062.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0062.pdf  >> xronosbatch.log 
rm Integral-Compute-0062.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0062.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0062.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0059.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0059.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0059.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0059.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0059.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0059.aux  >> xronosbatch.log 
rm Integral-Compute-0059.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0059.ids  >> xronosbatch.log 
rm Integral-Compute-0059.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0059.jax  >> xronosbatch.log 
rm Integral-Compute-0059.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0059.log  >> xronosbatch.log 
rm Integral-Compute-0059.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0059.oc  >> xronosbatch.log 
rm Integral-Compute-0059.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0059.out  >> xronosbatch.log 
rm Integral-Compute-0059.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0059.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0059.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0059.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0059.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0059.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0059.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0059.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0059.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0059.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0059.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0059.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0059.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0059.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0059.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0059.pdf  >> xronosbatch.log 
rm Integral-Compute-0059.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0059.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0059.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0058.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0058.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0058.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0058.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0058.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0058.aux  >> xronosbatch.log 
rm Integral-Compute-0058.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0058.ids  >> xronosbatch.log 
rm Integral-Compute-0058.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0058.jax  >> xronosbatch.log 
rm Integral-Compute-0058.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0058.log  >> xronosbatch.log 
rm Integral-Compute-0058.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0058.oc  >> xronosbatch.log 
rm Integral-Compute-0058.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0058.out  >> xronosbatch.log 
rm Integral-Compute-0058.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0058.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0058.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0058.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0058.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0058.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0058.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0058.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0058.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0058.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0058.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0058.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0058.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0058.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0058.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0058.pdf  >> xronosbatch.log 
rm Integral-Compute-0058.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0058.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0058.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0061.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0061.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0061.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0061.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0061.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0061.aux  >> xronosbatch.log 
rm Integral-Compute-0061.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0061.ids  >> xronosbatch.log 
rm Integral-Compute-0061.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0061.jax  >> xronosbatch.log 
rm Integral-Compute-0061.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0061.log  >> xronosbatch.log 
rm Integral-Compute-0061.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0061.oc  >> xronosbatch.log 
rm Integral-Compute-0061.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0061.out  >> xronosbatch.log 
rm Integral-Compute-0061.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0061.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0061.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0061.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0061.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0061.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0061.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0061.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0061.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0061.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0061.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0061.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0061.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0061.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0061.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0061.pdf  >> xronosbatch.log 
rm Integral-Compute-0061.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0061.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0061.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0073.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0073.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0073.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0073.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0073.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0073.aux  >> xronosbatch.log 
rm Integral-Compute-0073.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0073.ids  >> xronosbatch.log 
rm Integral-Compute-0073.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0073.jax  >> xronosbatch.log 
rm Integral-Compute-0073.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0073.log  >> xronosbatch.log 
rm Integral-Compute-0073.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0073.oc  >> xronosbatch.log 
rm Integral-Compute-0073.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0073.out  >> xronosbatch.log 
rm Integral-Compute-0073.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0073.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0073.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0073.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0073.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0073.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0073.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0073.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0073.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0073.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0073.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0073.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0073.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0073.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0073.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0073.pdf  >> xronosbatch.log 
rm Integral-Compute-0073.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0073.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0073.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0026.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0026.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0026.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0026.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0026.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0026.aux  >> xronosbatch.log 
rm Integral-Compute-0026.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0026.ids  >> xronosbatch.log 
rm Integral-Compute-0026.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0026.jax  >> xronosbatch.log 
rm Integral-Compute-0026.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0026.log  >> xronosbatch.log 
rm Integral-Compute-0026.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0026.oc  >> xronosbatch.log 
rm Integral-Compute-0026.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0026.out  >> xronosbatch.log 
rm Integral-Compute-0026.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0026.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0026.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0026.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0026.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0026.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0026.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0026.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0026.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0026.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0026.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0026.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0026.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0026.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0026.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0026.pdf  >> xronosbatch.log 
rm Integral-Compute-0026.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0026.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0026.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Concept-0003.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Concept-0003.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Concept-0003.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Concept-0003.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Concept-0003.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Concept-0003.aux  >> xronosbatch.log 
rm Integral-Concept-0003.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Concept-0003.ids  >> xronosbatch.log 
rm Integral-Concept-0003.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Concept-0003.jax  >> xronosbatch.log 
rm Integral-Concept-0003.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Concept-0003.log  >> xronosbatch.log 
rm Integral-Concept-0003.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Concept-0003.oc  >> xronosbatch.log 
rm Integral-Concept-0003.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Concept-0003.out  >> xronosbatch.log 
rm Integral-Concept-0003.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Concept-0003.synctex.gz  >> xronosbatch.log 
rm Integral-Concept-0003.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Concept-0003.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Concept-0003.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Concept-0003.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Concept-0003.sagetex.sage  >> xronosbatch.log 
rm Integral-Concept-0003.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Concept-0003.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Concept-0003.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Concept-0003.sagetex.scmd  >> xronosbatch.log 
rm Integral-Concept-0003.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Concept-0003.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Concept-0003.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Concept-0003.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Concept-0003.pdf  >> xronosbatch.log 
rm Integral-Concept-0003.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Concept-0003.sagetex.sout  >> xronosbatch.log 
rm Integral-Concept-0003.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0020.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0020.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0020.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0020.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0020.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0020.aux  >> xronosbatch.log 
rm Integral-Compute-0020.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0020.ids  >> xronosbatch.log 
rm Integral-Compute-0020.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0020.jax  >> xronosbatch.log 
rm Integral-Compute-0020.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0020.log  >> xronosbatch.log 
rm Integral-Compute-0020.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0020.oc  >> xronosbatch.log 
rm Integral-Compute-0020.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0020.out  >> xronosbatch.log 
rm Integral-Compute-0020.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0020.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0020.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0020.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0020.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0020.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0020.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0020.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0020.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0020.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0020.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0020.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0020.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0020.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0020.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0020.pdf  >> xronosbatch.log 
rm Integral-Compute-0020.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0020.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0020.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0050.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0050.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0050.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0050.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0050.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0050.aux  >> xronosbatch.log 
rm Integral-Compute-0050.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0050.ids  >> xronosbatch.log 
rm Integral-Compute-0050.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0050.jax  >> xronosbatch.log 
rm Integral-Compute-0050.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0050.log  >> xronosbatch.log 
rm Integral-Compute-0050.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0050.oc  >> xronosbatch.log 
rm Integral-Compute-0050.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0050.out  >> xronosbatch.log 
rm Integral-Compute-0050.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0050.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0050.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0050.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0050.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0050.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0050.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0050.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0050.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0050.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0050.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0050.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0050.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0050.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0050.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0050.pdf  >> xronosbatch.log 
rm Integral-Compute-0050.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0050.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0050.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0044.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0044.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0044.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0044.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0044.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0044.aux  >> xronosbatch.log 
rm Integral-Compute-0044.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0044.ids  >> xronosbatch.log 
rm Integral-Compute-0044.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0044.jax  >> xronosbatch.log 
rm Integral-Compute-0044.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0044.log  >> xronosbatch.log 
rm Integral-Compute-0044.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0044.oc  >> xronosbatch.log 
rm Integral-Compute-0044.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0044.out  >> xronosbatch.log 
rm Integral-Compute-0044.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0044.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0044.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0044.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0044.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0044.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0044.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0044.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0044.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0044.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0044.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0044.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0044.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0044.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0044.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0044.pdf  >> xronosbatch.log 
rm Integral-Compute-0044.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0044.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0044.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0048.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0048.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0048.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0048.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0048.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0048.aux  >> xronosbatch.log 
rm Integral-Compute-0048.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0048.ids  >> xronosbatch.log 
rm Integral-Compute-0048.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0048.jax  >> xronosbatch.log 
rm Integral-Compute-0048.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0048.log  >> xronosbatch.log 
rm Integral-Compute-0048.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0048.oc  >> xronosbatch.log 
rm Integral-Compute-0048.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0048.out  >> xronosbatch.log 
rm Integral-Compute-0048.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0048.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0048.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0048.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0048.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0048.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0048.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0048.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0048.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0048.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0048.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0048.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0048.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0048.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0048.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0048.pdf  >> xronosbatch.log 
rm Integral-Compute-0048.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0048.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0048.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0063.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0063.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0063.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0063.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0063.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0063.aux  >> xronosbatch.log 
rm Integral-Compute-0063.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0063.ids  >> xronosbatch.log 
rm Integral-Compute-0063.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0063.jax  >> xronosbatch.log 
rm Integral-Compute-0063.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0063.log  >> xronosbatch.log 
rm Integral-Compute-0063.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0063.oc  >> xronosbatch.log 
rm Integral-Compute-0063.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0063.out  >> xronosbatch.log 
rm Integral-Compute-0063.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0063.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0063.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0063.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0063.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0063.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0063.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0063.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0063.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0063.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0063.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0063.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0063.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0063.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0063.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0063.pdf  >> xronosbatch.log 
rm Integral-Compute-0063.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0063.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0063.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0076.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0076.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0076.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0076.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0076.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0076.aux  >> xronosbatch.log 
rm Integral-Compute-0076.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0076.ids  >> xronosbatch.log 
rm Integral-Compute-0076.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0076.jax  >> xronosbatch.log 
rm Integral-Compute-0076.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0076.log  >> xronosbatch.log 
rm Integral-Compute-0076.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0076.oc  >> xronosbatch.log 
rm Integral-Compute-0076.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0076.out  >> xronosbatch.log 
rm Integral-Compute-0076.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0076.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0076.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0076.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0076.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0076.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0076.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0076.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0076.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0076.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0076.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0076.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0076.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0076.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0076.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0076.pdf  >> xronosbatch.log 
rm Integral-Compute-0076.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0076.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0076.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0031.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0031.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0031.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0031.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0031.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0031.aux  >> xronosbatch.log 
rm Integral-Compute-0031.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0031.ids  >> xronosbatch.log 
rm Integral-Compute-0031.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0031.jax  >> xronosbatch.log 
rm Integral-Compute-0031.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0031.log  >> xronosbatch.log 
rm Integral-Compute-0031.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0031.oc  >> xronosbatch.log 
rm Integral-Compute-0031.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0031.out  >> xronosbatch.log 
rm Integral-Compute-0031.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0031.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0031.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0031.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0031.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0031.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0031.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0031.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0031.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0031.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0031.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0031.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0031.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0031.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0031.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0031.pdf  >> xronosbatch.log 
rm Integral-Compute-0031.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0031.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0031.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0043.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0043.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0043.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0043.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0043.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0043.aux  >> xronosbatch.log 
rm Integral-Compute-0043.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0043.ids  >> xronosbatch.log 
rm Integral-Compute-0043.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0043.jax  >> xronosbatch.log 
rm Integral-Compute-0043.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0043.log  >> xronosbatch.log 
rm Integral-Compute-0043.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0043.oc  >> xronosbatch.log 
rm Integral-Compute-0043.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0043.out  >> xronosbatch.log 
rm Integral-Compute-0043.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0043.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0043.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0043.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0043.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0043.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0043.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0043.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0043.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0043.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0043.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0043.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0043.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0043.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0043.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0043.pdf  >> xronosbatch.log 
rm Integral-Compute-0043.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0043.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0043.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Concept-0001.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Concept-0001.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Concept-0001.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Concept-0001.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Concept-0001.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Concept-0001.aux  >> xronosbatch.log 
rm Integral-Concept-0001.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Concept-0001.ids  >> xronosbatch.log 
rm Integral-Concept-0001.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Concept-0001.jax  >> xronosbatch.log 
rm Integral-Concept-0001.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Concept-0001.log  >> xronosbatch.log 
rm Integral-Concept-0001.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Concept-0001.oc  >> xronosbatch.log 
rm Integral-Concept-0001.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Concept-0001.out  >> xronosbatch.log 
rm Integral-Concept-0001.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Concept-0001.synctex.gz  >> xronosbatch.log 
rm Integral-Concept-0001.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Concept-0001.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Concept-0001.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Concept-0001.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Concept-0001.sagetex.sage  >> xronosbatch.log 
rm Integral-Concept-0001.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Concept-0001.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Concept-0001.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Concept-0001.sagetex.scmd  >> xronosbatch.log 
rm Integral-Concept-0001.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Concept-0001.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Concept-0001.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Concept-0001.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Concept-0001.pdf  >> xronosbatch.log 
rm Integral-Concept-0001.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Concept-0001.sagetex.sout  >> xronosbatch.log 
rm Integral-Concept-0001.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0075.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0075.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0075.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0075.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0075.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0075.aux  >> xronosbatch.log 
rm Integral-Compute-0075.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0075.ids  >> xronosbatch.log 
rm Integral-Compute-0075.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0075.jax  >> xronosbatch.log 
rm Integral-Compute-0075.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0075.log  >> xronosbatch.log 
rm Integral-Compute-0075.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0075.oc  >> xronosbatch.log 
rm Integral-Compute-0075.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0075.out  >> xronosbatch.log 
rm Integral-Compute-0075.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0075.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0075.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0075.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0075.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0075.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0075.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0075.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0075.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0075.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0075.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0075.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0075.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0075.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0075.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0075.pdf  >> xronosbatch.log 
rm Integral-Compute-0075.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0075.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0075.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0074.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0074.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0074.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0074.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0074.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0074.aux  >> xronosbatch.log 
rm Integral-Compute-0074.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0074.ids  >> xronosbatch.log 
rm Integral-Compute-0074.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0074.jax  >> xronosbatch.log 
rm Integral-Compute-0074.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0074.log  >> xronosbatch.log 
rm Integral-Compute-0074.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0074.oc  >> xronosbatch.log 
rm Integral-Compute-0074.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0074.out  >> xronosbatch.log 
rm Integral-Compute-0074.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0074.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0074.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0074.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0074.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0074.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0074.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0074.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0074.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0074.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0074.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0074.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0074.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0074.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0074.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0074.pdf  >> xronosbatch.log 
rm Integral-Compute-0074.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0074.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0074.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0070.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0070.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0070.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0070.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0070.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0070.aux  >> xronosbatch.log 
rm Integral-Compute-0070.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0070.ids  >> xronosbatch.log 
rm Integral-Compute-0070.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0070.jax  >> xronosbatch.log 
rm Integral-Compute-0070.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0070.log  >> xronosbatch.log 
rm Integral-Compute-0070.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0070.oc  >> xronosbatch.log 
rm Integral-Compute-0070.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0070.out  >> xronosbatch.log 
rm Integral-Compute-0070.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0070.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0070.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0070.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0070.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0070.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0070.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0070.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0070.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0070.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0070.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0070.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0070.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0070.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0070.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0070.pdf  >> xronosbatch.log 
rm Integral-Compute-0070.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0070.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0070.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0060.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0060.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0060.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0060.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0060.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0060.aux  >> xronosbatch.log 
rm Integral-Compute-0060.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0060.ids  >> xronosbatch.log 
rm Integral-Compute-0060.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0060.jax  >> xronosbatch.log 
rm Integral-Compute-0060.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0060.log  >> xronosbatch.log 
rm Integral-Compute-0060.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0060.oc  >> xronosbatch.log 
rm Integral-Compute-0060.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0060.out  >> xronosbatch.log 
rm Integral-Compute-0060.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0060.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0060.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0060.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0060.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0060.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0060.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0060.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0060.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0060.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0060.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0060.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0060.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0060.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0060.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0060.pdf  >> xronosbatch.log 
rm Integral-Compute-0060.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0060.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0060.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0056.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0056.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0056.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0056.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0056.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0056.aux  >> xronosbatch.log 
rm Integral-Compute-0056.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0056.ids  >> xronosbatch.log 
rm Integral-Compute-0056.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0056.jax  >> xronosbatch.log 
rm Integral-Compute-0056.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0056.log  >> xronosbatch.log 
rm Integral-Compute-0056.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0056.oc  >> xronosbatch.log 
rm Integral-Compute-0056.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0056.out  >> xronosbatch.log 
rm Integral-Compute-0056.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0056.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0056.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0056.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0056.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0056.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0056.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0056.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0056.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0056.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0056.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0056.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0056.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0056.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0056.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0056.pdf  >> xronosbatch.log 
rm Integral-Compute-0056.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0056.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0056.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0041.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0041.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0041.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0041.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0041.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0041.aux  >> xronosbatch.log 
rm Integral-Compute-0041.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0041.ids  >> xronosbatch.log 
rm Integral-Compute-0041.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0041.jax  >> xronosbatch.log 
rm Integral-Compute-0041.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0041.log  >> xronosbatch.log 
rm Integral-Compute-0041.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0041.oc  >> xronosbatch.log 
rm Integral-Compute-0041.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0041.out  >> xronosbatch.log 
rm Integral-Compute-0041.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0041.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0041.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0041.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0041.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0041.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0041.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0041.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0041.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0041.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0041.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0041.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0041.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0041.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0041.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0041.pdf  >> xronosbatch.log 
rm Integral-Compute-0041.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0041.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0041.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0045.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0045.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0045.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0045.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0045.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0045.aux  >> xronosbatch.log 
rm Integral-Compute-0045.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0045.ids  >> xronosbatch.log 
rm Integral-Compute-0045.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0045.jax  >> xronosbatch.log 
rm Integral-Compute-0045.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0045.log  >> xronosbatch.log 
rm Integral-Compute-0045.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0045.oc  >> xronosbatch.log 
rm Integral-Compute-0045.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0045.out  >> xronosbatch.log 
rm Integral-Compute-0045.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0045.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0045.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0045.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0045.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0045.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0045.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0045.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0045.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0045.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0045.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0045.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0045.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0045.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0045.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0045.pdf  >> xronosbatch.log 
rm Integral-Compute-0045.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0045.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0045.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0016.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0016.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0016.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0016.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0016.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0016.aux  >> xronosbatch.log 
rm Integral-Compute-0016.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0016.ids  >> xronosbatch.log 
rm Integral-Compute-0016.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0016.jax  >> xronosbatch.log 
rm Integral-Compute-0016.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0016.log  >> xronosbatch.log 
rm Integral-Compute-0016.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0016.oc  >> xronosbatch.log 
rm Integral-Compute-0016.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0016.out  >> xronosbatch.log 
rm Integral-Compute-0016.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0016.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0016.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0016.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0016.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0016.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0016.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0016.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0016.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0016.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0016.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0016.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0016.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0016.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0016.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0016.pdf  >> xronosbatch.log 
rm Integral-Compute-0016.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0016.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0016.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0015.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0015.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0015.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0015.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0015.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0015.aux  >> xronosbatch.log 
rm Integral-Compute-0015.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0015.ids  >> xronosbatch.log 
rm Integral-Compute-0015.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0015.jax  >> xronosbatch.log 
rm Integral-Compute-0015.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0015.log  >> xronosbatch.log 
rm Integral-Compute-0015.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0015.oc  >> xronosbatch.log 
rm Integral-Compute-0015.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0015.out  >> xronosbatch.log 
rm Integral-Compute-0015.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0015.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0015.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0015.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0015.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0015.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0015.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0015.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0015.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0015.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0015.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0015.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0015.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0015.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0015.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0015.pdf  >> xronosbatch.log 
rm Integral-Compute-0015.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0015.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0015.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0047.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0047.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0047.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0047.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0047.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0047.aux  >> xronosbatch.log 
rm Integral-Compute-0047.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0047.ids  >> xronosbatch.log 
rm Integral-Compute-0047.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0047.jax  >> xronosbatch.log 
rm Integral-Compute-0047.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0047.log  >> xronosbatch.log 
rm Integral-Compute-0047.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0047.oc  >> xronosbatch.log 
rm Integral-Compute-0047.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0047.out  >> xronosbatch.log 
rm Integral-Compute-0047.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0047.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0047.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0047.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0047.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0047.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0047.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0047.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0047.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0047.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0047.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0047.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0047.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0047.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0047.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0047.pdf  >> xronosbatch.log 
rm Integral-Compute-0047.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0047.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0047.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0037.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0037.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0037.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0037.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0037.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0037.aux  >> xronosbatch.log 
rm Integral-Compute-0037.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0037.ids  >> xronosbatch.log 
rm Integral-Compute-0037.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0037.jax  >> xronosbatch.log 
rm Integral-Compute-0037.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0037.log  >> xronosbatch.log 
rm Integral-Compute-0037.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0037.oc  >> xronosbatch.log 
rm Integral-Compute-0037.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0037.out  >> xronosbatch.log 
rm Integral-Compute-0037.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0037.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0037.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0037.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0037.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0037.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0037.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0037.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0037.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0037.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0037.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0037.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0037.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0037.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0037.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0037.pdf  >> xronosbatch.log 
rm Integral-Compute-0037.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0037.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0037.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0036.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0036.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0036.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0036.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0036.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0036.aux  >> xronosbatch.log 
rm Integral-Compute-0036.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0036.ids  >> xronosbatch.log 
rm Integral-Compute-0036.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0036.jax  >> xronosbatch.log 
rm Integral-Compute-0036.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0036.log  >> xronosbatch.log 
rm Integral-Compute-0036.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0036.oc  >> xronosbatch.log 
rm Integral-Compute-0036.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0036.out  >> xronosbatch.log 
rm Integral-Compute-0036.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0036.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0036.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0036.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0036.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0036.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0036.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0036.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0036.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0036.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0036.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0036.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0036.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0036.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0036.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0036.pdf  >> xronosbatch.log 
rm Integral-Compute-0036.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0036.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0036.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0014.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0014.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0014.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0014.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0014.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0014.aux  >> xronosbatch.log 
rm Integral-Compute-0014.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0014.ids  >> xronosbatch.log 
rm Integral-Compute-0014.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0014.jax  >> xronosbatch.log 
rm Integral-Compute-0014.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0014.log  >> xronosbatch.log 
rm Integral-Compute-0014.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0014.oc  >> xronosbatch.log 
rm Integral-Compute-0014.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0014.out  >> xronosbatch.log 
rm Integral-Compute-0014.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0014.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0014.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0014.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0014.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0014.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0014.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0014.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0014.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0014.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0014.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0014.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0014.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0014.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0014.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0014.pdf  >> xronosbatch.log 
rm Integral-Compute-0014.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0014.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0014.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0039.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0039.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0039.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0039.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0039.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0039.aux  >> xronosbatch.log 
rm Integral-Compute-0039.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0039.ids  >> xronosbatch.log 
rm Integral-Compute-0039.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0039.jax  >> xronosbatch.log 
rm Integral-Compute-0039.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0039.log  >> xronosbatch.log 
rm Integral-Compute-0039.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0039.oc  >> xronosbatch.log 
rm Integral-Compute-0039.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0039.out  >> xronosbatch.log 
rm Integral-Compute-0039.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0039.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0039.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0039.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0039.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0039.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0039.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0039.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0039.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0039.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0039.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0039.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0039.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0039.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0039.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0039.pdf  >> xronosbatch.log 
rm Integral-Compute-0039.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0039.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0039.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0034.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0034.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0034.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0034.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0034.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0034.aux  >> xronosbatch.log 
rm Integral-Compute-0034.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0034.ids  >> xronosbatch.log 
rm Integral-Compute-0034.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0034.jax  >> xronosbatch.log 
rm Integral-Compute-0034.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0034.log  >> xronosbatch.log 
rm Integral-Compute-0034.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0034.oc  >> xronosbatch.log 
rm Integral-Compute-0034.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0034.out  >> xronosbatch.log 
rm Integral-Compute-0034.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0034.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0034.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0034.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0034.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0034.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0034.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0034.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0034.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0034.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0034.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0034.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0034.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0034.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0034.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0034.pdf  >> xronosbatch.log 
rm Integral-Compute-0034.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0034.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0034.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0033.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0033.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0033.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0033.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0033.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0033.aux  >> xronosbatch.log 
rm Integral-Compute-0033.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0033.ids  >> xronosbatch.log 
rm Integral-Compute-0033.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0033.jax  >> xronosbatch.log 
rm Integral-Compute-0033.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0033.log  >> xronosbatch.log 
rm Integral-Compute-0033.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0033.oc  >> xronosbatch.log 
rm Integral-Compute-0033.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0033.out  >> xronosbatch.log 
rm Integral-Compute-0033.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0033.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0033.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0033.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0033.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0033.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0033.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0033.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0033.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0033.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0033.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0033.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0033.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0033.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0033.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0033.pdf  >> xronosbatch.log 
rm Integral-Compute-0033.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0033.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0033.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0022.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0022.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0022.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0022.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0022.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0022.aux  >> xronosbatch.log 
rm Integral-Compute-0022.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0022.ids  >> xronosbatch.log 
rm Integral-Compute-0022.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0022.jax  >> xronosbatch.log 
rm Integral-Compute-0022.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0022.log  >> xronosbatch.log 
rm Integral-Compute-0022.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0022.oc  >> xronosbatch.log 
rm Integral-Compute-0022.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0022.out  >> xronosbatch.log 
rm Integral-Compute-0022.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0022.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0022.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0022.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0022.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0022.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0022.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0022.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0022.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0022.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0022.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0022.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0022.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0022.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0022.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0022.pdf  >> xronosbatch.log 
rm Integral-Compute-0022.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0022.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0022.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0023.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0023.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0023.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0023.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0023.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0023.aux  >> xronosbatch.log 
rm Integral-Compute-0023.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0023.ids  >> xronosbatch.log 
rm Integral-Compute-0023.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0023.jax  >> xronosbatch.log 
rm Integral-Compute-0023.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0023.log  >> xronosbatch.log 
rm Integral-Compute-0023.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0023.oc  >> xronosbatch.log 
rm Integral-Compute-0023.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0023.out  >> xronosbatch.log 
rm Integral-Compute-0023.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0023.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0023.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0023.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0023.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0023.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0023.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0023.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0023.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0023.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0023.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0023.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0023.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0023.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0023.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0023.pdf  >> xronosbatch.log 
rm Integral-Compute-0023.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0023.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0023.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0021.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0021.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0021.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0021.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0021.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0021.aux  >> xronosbatch.log 
rm Integral-Compute-0021.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0021.ids  >> xronosbatch.log 
rm Integral-Compute-0021.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0021.jax  >> xronosbatch.log 
rm Integral-Compute-0021.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0021.log  >> xronosbatch.log 
rm Integral-Compute-0021.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0021.oc  >> xronosbatch.log 
rm Integral-Compute-0021.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0021.out  >> xronosbatch.log 
rm Integral-Compute-0021.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0021.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0021.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0021.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0021.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0021.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0021.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0021.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0021.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0021.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0021.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0021.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0021.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0021.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0021.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0021.pdf  >> xronosbatch.log 
rm Integral-Compute-0021.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0021.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0021.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0013.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0013.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0013.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0013.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0013.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0013.aux  >> xronosbatch.log 
rm Integral-Compute-0013.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0013.ids  >> xronosbatch.log 
rm Integral-Compute-0013.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0013.jax  >> xronosbatch.log 
rm Integral-Compute-0013.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0013.log  >> xronosbatch.log 
rm Integral-Compute-0013.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0013.oc  >> xronosbatch.log 
rm Integral-Compute-0013.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0013.out  >> xronosbatch.log 
rm Integral-Compute-0013.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0013.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0013.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0013.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0013.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0013.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0013.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0013.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0013.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0013.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0013.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0013.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0013.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0013.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0013.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0013.pdf  >> xronosbatch.log 
rm Integral-Compute-0013.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0013.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0013.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0035.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0035.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0035.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0035.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0035.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0035.aux  >> xronosbatch.log 
rm Integral-Compute-0035.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0035.ids  >> xronosbatch.log 
rm Integral-Compute-0035.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0035.jax  >> xronosbatch.log 
rm Integral-Compute-0035.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0035.log  >> xronosbatch.log 
rm Integral-Compute-0035.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0035.oc  >> xronosbatch.log 
rm Integral-Compute-0035.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0035.out  >> xronosbatch.log 
rm Integral-Compute-0035.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0035.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0035.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0035.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0035.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0035.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0035.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0035.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0035.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0035.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0035.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0035.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0035.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0035.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0035.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0035.pdf  >> xronosbatch.log 
rm Integral-Compute-0035.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0035.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0035.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0018.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0018.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0018.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0018.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0018.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0018.aux  >> xronosbatch.log 
rm Integral-Compute-0018.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0018.ids  >> xronosbatch.log 
rm Integral-Compute-0018.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0018.jax  >> xronosbatch.log 
rm Integral-Compute-0018.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0018.log  >> xronosbatch.log 
rm Integral-Compute-0018.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0018.oc  >> xronosbatch.log 
rm Integral-Compute-0018.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0018.out  >> xronosbatch.log 
rm Integral-Compute-0018.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0018.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0018.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0018.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0018.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0018.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0018.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0018.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0018.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0018.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0018.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0018.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0018.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0018.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0018.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0018.pdf  >> xronosbatch.log 
rm Integral-Compute-0018.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0018.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0018.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0077.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0077.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0077.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0077.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0077.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0077.aux  >> xronosbatch.log 
rm Integral-Compute-0077.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0077.ids  >> xronosbatch.log 
rm Integral-Compute-0077.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0077.jax  >> xronosbatch.log 
rm Integral-Compute-0077.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0077.log  >> xronosbatch.log 
rm Integral-Compute-0077.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0077.oc  >> xronosbatch.log 
rm Integral-Compute-0077.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0077.out  >> xronosbatch.log 
rm Integral-Compute-0077.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0077.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0077.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0077.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0077.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0077.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0077.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0077.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0077.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0077.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0077.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0077.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0077.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0077.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0077.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0077.pdf  >> xronosbatch.log 
rm Integral-Compute-0077.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0077.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0077.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0046.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0046.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0046.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0046.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0046.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0046.aux  >> xronosbatch.log 
rm Integral-Compute-0046.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0046.ids  >> xronosbatch.log 
rm Integral-Compute-0046.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0046.jax  >> xronosbatch.log 
rm Integral-Compute-0046.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0046.log  >> xronosbatch.log 
rm Integral-Compute-0046.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0046.oc  >> xronosbatch.log 
rm Integral-Compute-0046.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0046.out  >> xronosbatch.log 
rm Integral-Compute-0046.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0046.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0046.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0046.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0046.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0046.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0046.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0046.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0046.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0046.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0046.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0046.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0046.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0046.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0046.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0046.pdf  >> xronosbatch.log 
rm Integral-Compute-0046.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0046.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0046.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0032.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0032.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0032.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0032.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0032.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0032.aux  >> xronosbatch.log 
rm Integral-Compute-0032.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0032.ids  >> xronosbatch.log 
rm Integral-Compute-0032.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0032.jax  >> xronosbatch.log 
rm Integral-Compute-0032.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0032.log  >> xronosbatch.log 
rm Integral-Compute-0032.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0032.oc  >> xronosbatch.log 
rm Integral-Compute-0032.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0032.out  >> xronosbatch.log 
rm Integral-Compute-0032.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0032.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0032.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0032.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0032.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0032.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0032.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0032.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0032.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0032.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0032.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0032.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0032.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0032.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0032.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0032.pdf  >> xronosbatch.log 
rm Integral-Compute-0032.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0032.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0032.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0030.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0030.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0030.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0030.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0030.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0030.aux  >> xronosbatch.log 
rm Integral-Compute-0030.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0030.ids  >> xronosbatch.log 
rm Integral-Compute-0030.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0030.jax  >> xronosbatch.log 
rm Integral-Compute-0030.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0030.log  >> xronosbatch.log 
rm Integral-Compute-0030.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0030.oc  >> xronosbatch.log 
rm Integral-Compute-0030.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0030.out  >> xronosbatch.log 
rm Integral-Compute-0030.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0030.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0030.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0030.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0030.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0030.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0030.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0030.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0030.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0030.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0030.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0030.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0030.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0030.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0030.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0030.pdf  >> xronosbatch.log 
rm Integral-Compute-0030.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0030.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0030.sagetex.sout  >> xronosbatch.log 2>&1
echo 	\# Ended processing at `date` >> xronosbatch.log 

echo Processing FILE: Integral-Compute-0040.tex 
echo \#\#\# >> xronosbatch.log 
echo \#\#\# FILE: Integral-Compute-0040.tex - started processing at `date` >> xronosbatch.log 
echo \#\#\# >> xronosbatch.log 
echo 	\# Starting pdflatex >> xronosbatch.log 
pdflatex -synctex=1 -interaction=nonstopmode Integral-Compute-0040.tex  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0040.pdf ]; then
echo ERROR: Failed to create PDF: Integral-Compute-0040.pdf >> xronosbatch.log
fi
echo 	\# Clean up pdflatex work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0040.aux  >> xronosbatch.log 
rm Integral-Compute-0040.aux  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0040.ids  >> xronosbatch.log 
rm Integral-Compute-0040.ids  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0040.jax  >> xronosbatch.log 
rm Integral-Compute-0040.jax  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0040.log  >> xronosbatch.log 
rm Integral-Compute-0040.log  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0040.oc  >> xronosbatch.log 
rm Integral-Compute-0040.oc  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0040.out  >> xronosbatch.log 
rm Integral-Compute-0040.out  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0040.synctex.gz  >> xronosbatch.log 
rm Integral-Compute-0040.synctex.gz  >> xronosbatch.log 2>&1
echo 	\# Starting Sage >> xronosbatch.log 
sage Integral-Compute-0040.sagetex.sage  >> xronosbatch.log 2>&1 
if [ ! -e Integral-Compute-0040.sagetex.sout ]; then
echo ERROR: Failed to create sout: Integral-Compute-0040.sagetex.sout >> xronosbatch.log
fi
echo 	\# Clean up sagemath work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0040.sagetex.sage  >> xronosbatch.log 
rm Integral-Compute-0040.sagetex.sage  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0040.sagetex.sage.py  >> xronosbatch.log 
rm Integral-Compute-0040.sagetex.sage.py  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0040.sagetex.scmd  >> xronosbatch.log 
rm Integral-Compute-0040.sagetex.scmd  >> xronosbatch.log 2>&1
xronosmerge Integral-Compute-0040.tex  >> xronosbatch.log 2>&1 
xronosfmt Integral-Compute-0040.tex  >> xronosbatch.log 2>&1 
xronosfinal Integral-Compute-0040.tex  >> xronosbatch.log 2>&1 
echo 	\# Clean up pdf and sage files - not just work files >> xronosbatch.log 
echo \# deleting file: Integral-Compute-0040.pdf  >> xronosbatch.log 
rm Integral-Compute-0040.pdf  >> xronosbatch.log 2>&1
echo \# deleting file: Integral-Compute-0040.sagetex.sout  >> xronosbatch.log 
rm Integral-Compute-0040.sagetex.sout  >> xronosbatch.log 2>&1
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
