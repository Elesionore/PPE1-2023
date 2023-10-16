Salut !
Je commence...

# 26/09/23
 
J'ai crée une arborescence via terminal de Linux. Andromeda c'est mon ordi; Miya c'est moi. Comment ça était ?

Je veux observer tous les fichiers dans le dossier :

    • ls
      00-Introduction.pdf   fichiers    'Programmation et projet encadre 1'
      00-Shell.pdf          PPE1_2.pdf
      
Création des dossiers pour classification :

    • mkdir txt ann img

Je déplace des fichiers selon leurs extensions vers des dossiers appropriés :

    • mv *.txt ./txt
    • mv *.ann ./ann
    • mv *.jpg ./img

Création des sous-dossiers : 

    • cd txt
    • mkdir 2016 2017 2018

Déplacement et classification :

    • mv 2018*.txt ./2018
    • mv 2017*.txt ./2017
    • mv 2016*.txt ./2016
      
La meme chose pour des dossiers ann et img :

    • cd ann
      mkdir 2016 2017 2018
      mv 2018*.ann ./2018
      mv 2017*.ann ./2017
      mv 2016*.ann ./2016
    • cd img
      mkdir Paris Tokyo
      mv *Paris*.jpg ./Paris
      mv *.jpg ./Tokyo

Ca marche ? Je vais vérifier :

    • ls
      ann  damier.bmp  img  test.wav  txt

Il faut installer tree :

    • sudo apt install tree
      tree -d
.
├── ann
│   ├── 2016
│   ├── 2017
│   └── 2018
├── img
│   ├── Paris
│   └── Tokyo
└── txt
    ├── 2016
    ├── 2017
    └── 2018

11 directories

OUI ! ça marche !



# 03/10/23

I am adding new phrases in web version of Git, i want to see if it commits changes
Seems i have done it...with the help of tokens

What if i add more phrases ?



# 10/10/23
      
J'ai fait les exercices: annuler le commit, créer un tag, retourner vers la premiere version.
Voila j'ai copié les commandes du terminal.
      
Les commandes que j'ai utilisé :
      
    • git pull
    • git commit -a 

Ajout section seance 3 : 
      
    • git push

Comme je ne souviens pas mon mot de passe, donc je vais utiliser un token généré :

    • git log
      commit f8bf94ae29c2e44c2e7faf5c091829e8f9501cd1 (HEAD -> main, origin/main, origin/HEAD)

Il faut garder cette ligne idéntifiqnte de commit :

    • git reset f8bf94ae29c2e44c2e7faf5c091829e8f9501cd1

Je vais créer un tag :

    • git tag git-seance3-init
    • git push origin git-seance3-init

Maintenant il faut ajouter un fichier oups.md et je voudrais utiliser nano :

    • nano oups.md
    • git add oups.md
    • git commit -a

Commit message : ajout du mauvais fichier :

    • git push
    • git log
      
Comment retirer ce fichier... rm?

    • git rm oups.md
    • rm 'oups.md'
    • git push

Et enfin je vais créer un autre tag :

    • git tag git-seance3



# 11/10/23

Le séance 4 en classe.

Depuis ce moment je vais décrire tout plus détaillement. On corrige les exos. 

Alors que git reset effectue cette opération en ramenant la tête de la branche au commit spécifié, modifiant ainsi l'historique du commit, git revert effectue cela en créant un nouveau commit qui annule les modifications du commit spécifié et ne modifie donc pas l'historique.

    • wc < 2016_12_05-002.ann
    • wc 2016 12 05-002.ann
      
La commande wc de Linux vous permet de compter le nombre de lignes, de mots, de caractères et d’octets de chaque fichier donné ou d’entrée standard et d’imprimer le résultat.

    • cat *.txt | wc

Les commandes du séance 4 :
    • cat (concatène le contenu des fichiers)
    • wc (affiche le nombre de lignes, de mots et d'octet)
    • grep (lancer une expression régulière pour trouver mot/symbole)
    • sort (trier les fichiers, l'ordre par défaut est alphabétique)
    • uniq (regroupe les entrées redondantes en une seule entrée sans doublets)
    • echo (renvoie l'argument)

Comment ajouter une image ?

    • Chercher “markdown image”
    • sauvegarder creer hyperlien sur cette image

J’ai essayé de trouver la location, mais…

    • cat ./2016/*/* | grep Location | cut -f 3 | uniq -c | sort -nr
    • cat: './2016/*/*': No such file or directory

    • chmod +x script.sh
    • ./script.sh
    • ./script.sh toto
    • vim test.sh
    • chmod +x test.sh
    • ./test
    • ./test.sh bonjour tout le monde

# 16/10/23 exos pour séance 4

J’ai essayé de compter le nombre d’annotations par année, mais un problème s’est apparu :

    • cat 2016/*/*.ann | wc -l
    • cat: '2016/*/*.ann': No such file or directory
      0

Donc, j’ai vérifié si cette commande marche en générale :

    • cat *.ann | wc -l
      24182
Ça marche et je vais trouver comment spécifier l’année dans le nom :

    • cat 2016*.ann | wc -l 
      9442
    • cat 2017*.ann | wc -l 
      7179
    • cat 2018*.ann | wc -l 
      7561

Maintenant il faut limiter ce comptage aux lieux :
 
    • cat 2016* |grep Location | wc -l 
      3144
    • cat 2017* |grep Location | wc -l
      2466
    • cat 2018* |grep Location | wc -l 
      3110

Je vais sauvegarder ces résultats dans un fichier :

    • echo "Location en 2016" >> Location.txt
    • cat 2016*.ann | grep Location | wc -l >> Location.txt
      
    • echo "Location en 2017" >> Location.txt
    • cat 2017*.ann | grep Location | wc -l >> Location.txt
      
    • echo "Location en 2018" >> Location.txt
    • cat 2018*.ann | grep Location | wc -l >> Location.txt

Pendant cet étape j’ai observé que > remplace le contenu déjà existant et sur le slide 17 j’ai lu qu’il faut utiliser >>   

C’est le temps pour établir le classement des lieux les plus cités :

    • echo "Classement des lieux les plus cités en 2016" > lieux.txt
    • cat 2016*.ann | grep Location | cut -f 3 | sort | uniq -c | sort -nr | head -n 15 >> lieux.txt
      
    • echo "Classement des lieux les plus cités en 2017" >> lieux.txt
    • cat 2017*.ann | grep Location | cut -f 3 | sort | uniq -c | sort -nr | head -n 15 >> lieux.txt
      
    • echo "Classement des lieux les plus cités en 2018" >> lieux.txt
    • cat 2018*.ann | grep Location | cut -f 3 | sort | uniq -c | sort -nr | head -n 15 >> lieux.txt
      
Enfin je veux trouver les annotations les plus fréquentes pour le mois du juin :

    • cat */06/*.ann | cut -f 3 | sort | uniq -c | sort -nr | head
      cat: '*/06/*.ann': No such file or directory

Magnifique :/ Le même problème. Un autre façon...

    • cat *06*.ann | cut -f 3 | sort | uniq -c | sort -nr | head
     84 France
     34 Paris
     34 2016
     26 21h
     18 Europe
     18 États-Unis
     16 2015
     15 Rio
     15 18h
     15 12 juin 2016


Je l’ai fait !


