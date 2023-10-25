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

Essentiel sur les scripts bash :

    • "#" (écrire un commentaire)
    • "#!/usr/bin/bash" (obligatoire au début du script pour indiquer à la machine qu'il s'agit d'un fichier script bash)
    • "chmod +x <nom_script.sh>" (à entrer dans le terminal afin de rendre le fichier exécutable)
    • les variables, ex : dico="anglais"
    • les arguments, ex : $1, $2, $3, etc (pour faire appel à un script, après l'avoir rendu exécutable, utiliser la commande : bash <nom_scritp.md>)


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

P.S. Je vais ajouter le screenshot de mon terminal de tout le processus en format pdf.

# 18/10/23 séance 5

Pour faire un script exécutable (3 façons ) :

    • chmod +x [FICHIER]
    • ./FICHIER.sh
    • bash ./FICHIER.sh

Pour l’exercice 1 :

    • bash question1.sh LOCATION 2016

Pour l’exercice 2 :

    • bash reponse2.sh * 02
    • ls $1 $2

CONDITIONS

Si les arguments sont corrects, je lance le programme, sinon j’émets un message d’erreur et j’arrête le script.

    • if [ condition ]
    • then
        ◦ echo " la condition est valide "
    • else
        ◦ echo " la condition n ’ est pas valide "
    • fi

    • Conditions possibles :

    • f fichier vrai si le fichier existe
    • -d dossier vrai si le dossier existe
    • -s fichier vrai si le fichier existe et n’est pas vide
      
Sur des chaînes de caractères :

    • = ou != tester si deux chaînes sont identiques (=) ou différentes (!=)
    • < ou > pour déterminer si in chaîne est avant ou après une autre dans
    • l’ordre alphabétique
    • -n chaine vrai si la chaîne n’est pas vide
    • -z vrai si la chaîne est vide (ex: argument non fourni)

Sur les entiers :

    • a -eq b si a est égal à b (equal)
    • a -ne b si a est différent de b (not equal)
    • a -lt b si a est plus petit que b (less than)
    • a -gt b si a est plus grand que b (greater than)
    • a -le b si a est inférieur ou égal à b
    • a -ge b si a supérieur ou égal à b

Exemple :

    • if [[ $1 =∼ bon ( jour | soir ) ]]
    • then
        ◦ echo " salut "
    • fi
    • echo ‘fin du programme’

!! on peut arrêter l’exécution du script à tout moment avec la commande exit


L’ARGUMENT N’EST PAS VIDE

    • echo « le premier argument : ($1) »
    • if [ -n $1 ]
    • then
        ◦ echo “le premier argument n’est pas vide”
        ◦ if [[ $1 =∼ bon ( jour | soir ) ]]
        ◦ then
            ▪ echo " salut "
        ◦ fi
    • else 
        ◦ echo “le premier argument n’est pas vide”
    • fi
    • echo “fin du programme”

L’ARGUMENT EST VIDE 

    • echo « le premier argument : ($1) »
    • if [ -z $1 ]
    • then
        ◦ echo “le premier argument est vide”
        ◦ exit
    • fi

    • echo “le premier argument n’est pas vide”
    • if [[ $1 =∼ bon ( jour | soir ) ]]
        ◦ then
            ▪ echo " salut "
        ◦ exit
    • fi
    • echo “fin du programme”

Les boucles FOR (« pour tout élément, faire... »)

    • N =0
    • for ELEMENT in a b c d e
    • do
        ◦ N = $ ( expr $N + 1)
        ◦ echo " le $N ieme élément est $ELEMENT "
    • done

Exemple avec séquence :

    • for val in $(seq 3 12)
    • do 
        ◦ echo “val vaut $val”
    • done

Les boucles WHILE (« tant qu’une condition est vraie, on recommence... ») : 

    • while [ condition ];
    • do
        ◦ echo " je continue à boucler " ;
    • done

Exemple :

    • N=0
    • while [ $N -lt 10 ]
    • do
        ◦ echo “on en est à $N”
        ◦ N=$(expr $N + 1)
    • done
      
    • echo on a fini”

! Ctrl + C va arrêter le programme forcement

Exemple 2 :

    • while read LINE
    • do 
        ◦ echo « la ligne est : $LINE »
    • done < ./reponses.txt
      
    • echo « on a fini »

Exemple 3 :

    • #!/ usr/ bin/ bash
    • if [ $# -ne 1 ]
    • then
        ◦ echo " ce programme demande un argument "
            ▪ exit
    • fi
    • FICHIER_URLS = $1
    • OK =0
    • NOK =0
    • while read -r LINE ;
    • do
        ◦ echo " la ligne : $LINE "
        ◦ if [[ $LINE =∼ ^ https ?:// ]]
        ◦ then
            ▪ echo " ressemble à une URL valide "
            ▪ OK =$( expr $OK + 1)
        ◦ else
            ▪ echo " ne ressemble pas à une URL valide "
            ▪ NOK =$ ( expr $NOK + 1)
        ◦ fi
    • done < $FICHIER_URLS
    • echo " $OK URLs et $NOK lignes douteuses "

LYNX

récupérer juste texte, pas de liens

    • lynx -dump -nolist plurital.org

CURL

trouver l’info du site

    • curl -i https://www.perdu.com


# 22/10/23 ajout de la validation des arguments

J'ai vérifié si mes scripts fonctionnaient. Non. J'ai dû changer beaucoup de choses. Dans le terminal, je vérifiais constamment si le résultat apparaissait lorsque le script était exécuté. Pour exécuter le script, j'ai utilisé la commande 

    • sh ./bash_script.sh

Finalement, tout s'est bien passé. J'ai mis à jour les 4 scripts dans le dossier ‘Exercices séance 4’ :

    • bash_script.sh  
    • exo_script_1.sh
    • exo_script_2.sh    
    • exo_script_3.sh

Je joins 3 scripts bash qui vérifient l'exécution des scripts à travers une condition :
      
    • validation_script_1.sh
    • validation_script_2.sh    
    • validation_script_3.sh

Je joins également une capture d'écran avec les résultats de l'exécution du script dans le terminal sous le nom ‘Scripts_sont_bons.pdf’

# 25/10/23 séance 6
Pour aujourd’hui il faut récupérer les URL contenues dans un fichier texte, écrire sur le terminal des informations séparées par des tabulations.

      while read -r line;
      do
      	echo ${line};
      done < "urls/fr.txt";

J'ai ajouté parametre INFILE

