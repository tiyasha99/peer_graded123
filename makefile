all: ReADME.md

README.md: guessinggame.sh
	touch ReADME.md
	echo "# guessinggame" > README.md
	echo $$(date) >> ReADME.md
	echo "  \n" >> ReADME.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
clean:
	rm ReADME.md
