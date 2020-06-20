dateNow = $(shell date)
numberOfLines = $(shell cat guessinggame.sh | wc -l)

all:
	echo "# The Guess Game: guess the number of files in directory" > README.md
	echo "## This file was generated on : $(dateNow)" >> README.md
	echo "## Number of lines in the bash Script $(numberOfLines)" >> README.md