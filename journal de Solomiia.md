Salut !
Je commence...

# 26/09/23
 
J'ai crée une arborescence via terminal de Linux. Andromeda c'est mon ordi; Miya c'est moi. Comment ça était ?

Je veux observer tous les fichiers dans le dossier :

ls
 00-Introduction.pdf   fichiers    'Programmation et projet encadre 1'
 00-Shell.pdf          PPE1_2.pdf

Création des dossiers pour classification :

mkdir txt ann img

Je déplace des fichiers selon leurs extensions vers des dossiers appropriés :

mv *.txt ./txt
mv *.ann ./ann
mv *.jpg ./img

Création des sous-dossiers : 

cd txt
mkdir 2016 2017 2018

Déplacement et classification :

mv 2018*.txt ./2018
mv 2017*.txt ./2017
mv 2016*.txt ./2016

La meme chose pour des dossiers ann et img :

cd ann
mkdir 2016 2017 2018
mv 2018*.ann ./2018
mv 2017*.ann ./2017
mv 2016*.ann ./2016
cd img
mkdir Paris Tokyo
mv *Paris*.jpg ./Paris
mv *.jpg ./Tokyo

Ca marche ? Je vais vérifier :

ls
ann  damier.bmp  img  test.wav  txt

Il faut installer tree :

sudo apt install tree
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

what if i add more phrases ?



# 10/10/23

J'ai fait les exercices: annuler le commit, créer un tag, retourner vers la premiere version.
Voila j'ai copié les commandes du terminal.

Les commandes que j'ai utilisé :

git pull
git commit -a 

Ajout section seance 3 : 

git push

Comme je ne souviens pas mon mot de passe, donc je vais utiliser un token généré :

git log
commit f8bf94ae29c2e44c2e7faf5c091829e8f9501cd1 (HEAD -> main, origin/main, origin/HEAD)

Il faut garder cette ligne idéntifiqnte de commit :

git reset f8bf94ae29c2e44c2e7faf5c091829e8f9501cd1

Je vais créer un tag :

git tag git-seance3-init
git push origin git-seance3-init

Maintenant il faut ajouter un fichier oups.md et je voudrais utiliser nano :

nano oups.md
git add oups.md
git commit -a

Commit message : ajout du mauvais fichier :

git push
git log

Comment retirer ce fichier... rm?

git rm oups.md
rm 'oups.md'
git push

Et enfin je vais créer un autre tag :

git tag git-seance3


