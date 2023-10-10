Salut !
Je commence...
26.09.23 
J'ai crée une arborescence via terminal de Linux. Andromeda c'est mon ordi; Miya c'est moi

miya@andromeda:~/Pictures/Desktop$ cd Programmation\ et\ projet\ encadre/
miya@andromeda:~/Pictures/Desktop/Programmation et projet encadre$ ls
 00-Introduction.pdf   fichiers    'Programmation et projet encadre 1'
 00-Shell.pdf          PPE1_2.pdf
miya@andromeda:~/Pictures/Desktop/Programmation et projet encadre$ cd fichiers/
miya@andromeda:~/Pictures/Desktop/Programmation et projet encadre/fichiers$ mkdir txt
miya@andromeda:~/Pictures/Desktop/Programmation et projet encadre/fichiers$ mv *.txt ./txt
miya@andromeda:~/Pictures/Desktop/Programmation et projet encadre/fichiers$ mkdir ann
miya@andromeda:~/Pictures/Desktop/Programmation et projet encadre/fichiers$ mv *.ann ./ann
miya@andromeda:~/Pictures/Desktop/Programmation et projet encadre/fichiers$ mkdir img
miya@andromeda:~/Pictures/Desktop/Programmation et projet encadre/fichiers$ mv *.jpg ./img
miya@andromeda:~/Pictures/Desktop/Programmation et projet encadre/fichiers$ cd txt
miya@andromeda:~/Pictures/Desktop/Programmation et projet encadre/fichiers/txt$ mkdir 2016 2017 2018
miya@andromeda:~/Pictures/Desktop/Programmation et projet encadre/fichiers/txt$ mv 2018*.txt ./2018
miya@andromeda:~/Pictures/Desktop/Programmation et projet encadre/fichiers/txt$ mv 2017*.txt ./2017
miya@andromeda:~/Pictures/Desktop/Programmation et projet encadre/fichiers/txt$ mv 2016*.txt ./2016
miya@andromeda:~/Pictures/Desktop/Programmation et projet encadre/fichiers/txt$ cd ..
miya@andromeda:~/Pictures/Desktop/Programmation et projet encadre/fichiers$ cd ann
miya@andromeda:~/Pictures/Desktop/Programmation et projet encadre/fichiers/ann$ mkdir 2016 2017 2018
miya@andromeda:~/Pictures/Desktop/Programmation et projet encadre/fichiers/ann$ mv 2018*.ann ./2018
miya@andromeda:~/Pictures/Desktop/Programmation et projet encadre/fichiers/ann$ mv 2017*.ann ./2017
miya@andromeda:~/Pictures/Desktop/Programmation et projet encadre/fichiers/ann$ mv 2016*.ann ./2016
miya@andromeda:~/Pictures/Desktop/Programmation et projet encadre/fichiers/ann$ cd ..
miya@andromeda:~/Pictures/Desktop/Programmation et projet encadre/fichiers$ cd img
miya@andromeda:~/Pictures/Desktop/Programmation et projet encadre/fichiers/img$ mkdir Paris Tokyo
miya@andromeda:~/Pictures/Desktop/Programmation et projet encadre/fichiers/img$ mv *Paris*.jpg ./Paris
miya@andromeda:~/Pictures/Desktop/Programmation et projet encadre/fichiers/img$ mv *.jpg ./Tokyo
miya@andromeda:~/Pictures/Desktop/Programmation et projet encadre/fichiers/img$ 
miya@andromeda:~/Pictures/Desktop/Programmation et projet encadre/fichiers/img$ cd ..
miya@andromeda:~/Pictures/Desktop/Programmation et projet encadre/fichiers$ ls
ann  damier.bmp  img  test.wav  txt
miya@andromeda:~/Pictures/Desktop/ sudo apt install tree
miya@andromeda:~/Pictures/Desktop/Programmation et projet encadre/fichiers$ tree -d
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

I am adding new phrases in web version of Git, i want to see if it commits changes
Seems i have done it...with the help of tokens

## what if i add more phrases ?

#i am error message 

##i am error

10/10/23

J'ai fait les exercices: annuler le commit, créer un tag, retourner vers la premiere version.
Voila j'ai copié les commandes du terminal.

miya@andromeda:~/Pictures/Desktop/Programmation et projet encadre/PPE1-2023-etudiante$ git pull
Already up to date.
miya@andromeda:~/Pictures/Desktop/Programmation et projet encadre/PPE1-2023-etudiante$ git commit -a
[main f8bf94a] Ajout section seance 3
 2 files changed, 5 insertions(+), 2 deletions(-)
 delete mode 100644 NewFile
miya@andromeda:~/Pictures/Desktop/Programmation et projet encadre/PPE1-2023-etudiante$ git push
Username for 'https://github.com': Elesionore
Password for 'https://Elesionore@github.com': 
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 4 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 349 bytes | 349.00 KiB/s, done.
Total 3 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
remote: This repository moved. Please use the new location:
remote:   https://github.com/Elesionore/PPE1-2023.git
To https://github.com/Elesionore/PPE1-2023-etudiante.git
   948be8f..f8bf94a  main -> main
miya@andromeda:~/Pictures/Desktop/Programmation et projet encadre/PPE1-2023-etudiante$ git log
commit f8bf94ae29c2e44c2e7faf5c091829e8f9501cd1 (HEAD -> main, origin/main, origin/HEAD)
Author: Solomiia KOROL <107849917+Elesionore@users.noreply.github.com>
Date:   Tue Oct 10 22:10:05 2023 +0200

    Ajout section seance 3

miya@andromeda:~/Pictures/Desktop/Programmation et projet encadre/PPE1-2023-etudiante$ git reset f8bf94ae29c2e44c2e7faf5c091829e8f9501cd1
miya@andromeda:~/Pictures/Desktop/Programmation et projet encadre/PPE1-2023-etudiante$ git tag git-seance3-init
miya@andromeda:~/Pictures/Desktop/Programmation et projet encadre/PPE1-2023-etudiante$ git push origin git-seance3-init
Username for 'https://github.com': Elesionore
Password for 'https://Elesionore@github.com': 
Total 0 (delta 0), reused 0 (delta 0), pack-reused 0
remote: This repository moved. Please use the new location:
remote:   https://github.com/Elesionore/PPE1-2023.git
To https://github.com/Elesionore/PPE1-2023-etudiante.git
 * [new tag]         git-seance3-init -> git-seance3-init
miya@andromeda:~/Pictures/Desktop/Programmation et projet encadre/PPE1-2023-etudiante$ nano oups.md
miya@andromeda:~/Pictures/Desktop/Programmation et projet encadre/PPE1-2023-etudiante$ git add oups.md
miya@andromeda:~/Pictures/Desktop/Programmation et projet encadre/PPE1-2023-etudiante$ git commit -a
[main d57dca0] ajout du mauvais fichier
 1 file changed, 1 insertion(+)
 create mode 100644 oups.md
miya@andromeda:~/Pictures/Desktop/Programmation et projet encadre/PPE1-2023-etudiante$ git push
Username for 'https://github.com': Elesionore
Password for 'https://Elesionore@github.com': 
Enumerating objects: 4, done.
Counting objects: 100% (4/4), done.
Delta compression using up to 4 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 344 bytes | 344.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
remote: This repository moved. Please use the new location:
remote:   https://github.com/Elesionore/PPE1-2023.git
To https://github.com/Elesionore/PPE1-2023-etudiante.git
   f8bf94a..d57dca0  main -> main
miya@andromeda:~/Pictures/Desktop/Programmation et projet encadre/PPE1-2023-etudiante$ git log
commit d57dca0862cd8cb7a896b6d4f1073c4882d3fcd7 (HEAD -> main, origin/main, origin/HEAD)
Author: Solomiia KOROL <107849917+Elesionore@users.noreply.github.com>
Date:   Tue Oct 10 22:59:05 2023 +0200

    ajout du mauvais fichier

commit f8bf94ae29c2e44c2e7faf5c091829e8f9501cd1 (tag: git-seance3-it, tag: git-seance3-init)
Author: Solomiia KOROL <107849917+Elesionore@users.noreply.github.com>
Date:   Tue Oct 10 22:10:05 2023 +0200

    Ajout section seance 3
miya@andromeda:~/Pictures/Desktop/Programmation et projet encadre/PPE1-2023-etudiante$ git rm oups.md
rm 'oups.md'
miya@andromeda:~/Pictures/Desktop/Programmation et projet encadre/PPE1-2023-etudiante$ git commit -a
[main 474ee51] remove oups.md
 1 file changed, 1 deletion(-)
 delete mode 100644 oups.md
miya@andromeda:~/Pictures/Desktop/Programmation et projet encadre/PPE1-2023-etudiante$ git push
Username for 'https://github.com': Elesionore
Password for 'https://Elesionore@github.com': 
Enumerating objects: 3, done.
Counting objects: 100% (3/3), done.
Delta compression using up to 4 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (2/2), 249 bytes | 249.00 KiB/s, done.
Total 2 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
remote: This repository moved. Please use the new location:
remote:   https://github.com/Elesionore/PPE1-2023.git
To https://github.com/Elesionore/PPE1-2023-etudiante.git
   d57dca0..474ee51  main -> main
miya@andromeda:~/Pictures/Desktop/Programmation et projet encadre/PPE1-2023-etudiante$ git tag git-seance3
miya@andromeda:~/Pictures/Desktop/Programmation et projet encadre/PPE1-2023-etudiante$ git push origin git-seance3
Username for 'https://github.com': Elesionore
Password for 'https://Elesionore@github.com': 
Total 0 (delta 0), reused 0 (delta 0), pack-reused 0
remote: This repository moved. Please use the new location:
remote:   https://github.com/Elesionore/PPE1-2023.git
To https://github.com/Elesionore/PPE1-2023-etudiante.git


