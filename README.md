Si on décompose cette commande :

Tu n'es pas obligé d'affecter cela à une variable avec file = , mais en faisant cela, tu pourras interagir facilement avec ton fichier.
Le chemin/vers/ton/fichier.extension est comme pour la création de dossier : Ruby prendra le chemin à partir de là où se trouve ton programme ou bien depuis la racine. Concernant les droits, ils définissent et limitent ce que tu vas faire dans ton fichier. Il existe 6 types de droits :
r, pour "reading" : tu vas pouvoir lire le fichier, voir ce qu'il y a écrit dedans.
a, pour "append" : tu vas pouvoir ajouter des lignes à ton fichier.
w, pour "write" : tu vas réécrire intégralement ton fichier. S'il y a déjà un fichier, il efface tout pour repartir de 0. S'il n'y a pas de fichier, il en crée un.
w+, pour "write and read" : tu vas pouvoir réécrire intégralement ton fichier (cf. ci-dessus), et tu peux aussi lire ce qu'il y a dedans.
a+, pour "append and read" : tu vas pouvoir ajouter des lignes à ton fichier, et aussi pouvoir lire ce qu'il y a dedans.
r+, pour "read and write" : tu vas pouvoir modifier ton fichier sans tout effacer

Morceau de ressource THP, Soleil sur toi Ikrame
