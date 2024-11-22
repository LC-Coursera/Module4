all : README.md

README.md:
	echo "Projet de fin de module 4 Coursera" > README.md
	date >> README.md
	echo "Le nombre de lignes de code de guessinggame.sh est de :" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
