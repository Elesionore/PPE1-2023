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
