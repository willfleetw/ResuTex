# This file is provided as a quick and easy way to clean up LaTeX compilation 
# files from the command line, or from other programs that can run Makefiles.
#
# 1. navigate to this directory using your favorite command line shell
# 2. run the command "make clean" to clean up the directory
#

clean:
	@rm *.aux *.fdb_latexmk *.fls *.out *.synctex.gz *.log 2> /dev/null || true
