#!/bin/bash

# Afficher un message de début
echo "Exécution du premier script : script1.py"
python3 models.py

# Vérifier si le premier script a réussi (code de retour 0)
if [ $? -eq 0 ]; then
    echo "Le premier script a réussi. Exécution du deuxième script : script2.py"
    python3 main.py
else
    echo "Le premier script a échoué. Arrêt de l'exécution."
    exit 1
fi

# Vérifier si le deuxième script a réussi
if [ $? -eq 0 ]; then
    echo "Le deuxième script a réussi. Exécution du troisième script : script3.py"
    python3 test.py
else
    echo "Le deuxième script a échoué. Arrêt de l'exécution."
    exit 1
fi

# Afficher un message de fin
echo "Execution avec succès."
