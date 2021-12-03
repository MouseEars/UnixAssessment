README.md:
	touch README.md
	echo "# Guessing Game Assignment" > README.md
	echo " " >> README.md
	echo "Date and time of build: " >> README.md
	date >> README.md
	echo " " >> README.md
	echo "Line count of guessing game file: " >> README.md
	wc -l < guessinggame.sh >> README.md
