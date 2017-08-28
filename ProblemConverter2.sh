#!/bin/sh

#
# this script converts raw files to being processed through xronosfmt
#
#  basically run xronosraw, then xronosbatch and its produced shell script 
#  causes a run of pdflatex then sage, then xronosfmt.  It produces three 
#  log files.  The first is located in the directory where you started the 
#  program. That file is called raw.out and it contains the output from the 
#  xromosraw program.  The second and third files are in the directory where 
#  the output winds up.  One is called xronosbatch.out and contains the 
#  output of the xronosbatch program.  The other is called xronosbatch.log 
#  and contains the output from the batch file created by xronosbatch.  So
#  errors in the xronosraw program will show up in raw.out.  Errors in 
#  xronosbatch will show up in xronosbatch.out.  Errors in converting your 
#  output into the correct format will show up in xronosbatch.log.
#   
#  We can post process the xronosbatch.log file with grep or just look at 
#  the entire mess in an editor.
#

# set the config file - 
# you can also do this in your shell before running this file
#XRONOSTOOLS_CONF=/usr/local/etc/xronostools/xronostools.conf
#export XRONOSTOOLS_CONF


ScratchDir=XronosOutput

# do we have a command line argument that provides the raw file to process?
# if not then give an error message, else do the processing of the file

# change to the directory where we put the output from xronosraw
# in this case that is XronosOutput if you change XronosrawOutputDir
# in the conf file, remember to change this
cd $ScratchDir

# run it so we actually DO the processing
#     NOTE: you CAN sudo this as: "sudo bash < xronosbatch.sh"
./xronosbatch.sh

#
# post process the xronosbatch.log file for reporting purposes
#
grep "xronosfinal Question Count for" xronosbatch.log

# end of the else clause of the if that checked for an argument

