all: README.md clean

README.md:
	touch README.md
	echo "# Guessing Game" > README.md
	echo "Last run: $(date)  " >> README.md
	echo "Lines of code: $(cat guessinggame.sh | wc -l)  " >> README.md

clean:
	rm README.md
