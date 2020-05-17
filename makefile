README.md:
	echo "Project title: tuw-assignment" > README.md
	
	echo "The date and time when make was ran: $$(date)." >> README.md
	
	echo "The guessinggame.sh contains $$(wc -l guessinggame.sh | egrep -o [0-9]+) lines of code." >> README.md

clean:
	rm README.md
