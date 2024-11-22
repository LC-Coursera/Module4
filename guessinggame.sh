#!/usr/bin/env bash


# fonction de verification de la réponse
function verif() {
    if (($1==$2))
        then 
            return 0
        else
            return 1
    fi
}


res=1
answer=$(ls -l|wc -l)

while ((res!=0))
do
    echo "Devinez combien de fichiers sont présents dans le répertoire courant :"
    read try
    verif $try $answer
    res=$?
    if (($try > $answer))
    then
        echo "Votre réponse est trop élévée!"
    fi
    if (($try < $answer))
    then
        echo "Votre réponse est trop basse !"
    fi
done

echo "Félicitations, vous avez trouvé le bon résulat"