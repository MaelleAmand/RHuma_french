# tp2 https://strengejacke.wordpress.com/2013/02/25/simplify-frequency-plots-with-ggplot-in-r-rstats/

# ******************************************************************
#   
#                ** TP2 : R pour sciences humaines **
#                     "Customiser" des graphiques
#                       (Maelle AMAND)
# 
# ******************************************************************
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@@@ COLORER UN GRAPHIQUE @@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

# Beaucoup d'etudes vantent les bienfaits des livres de coloriages.
# Colorions nous aussi nos graphiques pour faire baisser notre taux de stress 
# lorsque nous utilisons R ! 

# https://www.medicaldaily.com/therapeutic-science-adult-coloring-books-how-childhood-pastime-helps-adults-356280


# Faisons un histogramme a partir des donnees stockees dans un vecteur x :
x <- c(1, 2, 3, 3, 3, 3, 4, 4, 4, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 7, 7, 7, 8, 9, 10)
hist(x) 

# Colorons l'histogramme en rouge a l'aide de col="red". 
# On ajoute une vigule apres x et on place cette commande couleur AVANT les parentheses).

hist(x, col="red")

# A vous ! Modifiez la couleur en utilisant le nom des couleurs disponibles
# sur ce site: http://www.stat.columbia.edu/~tzheng/files/Rcolor.pdf




#_____________________________________________________________________


# Comme R aime les chiffres, il suffit parfois de rempacer "red" par un
# chiffre. 2 est le nom de code pour la couleur rouge. Les chiffres vont de 1 a 8.
# Il y a donc 8 couleurs de base avec un chiffre comme nom de code.

hist(x, col=2)


# A vous ! Modifiez la couleurs en changeant les chiffres. Notez les chiffres
# correspondant aux couleurs que vous etes susceptibles d'utiliser. Personnellement,
# j'ai tendance a utiliser "lightblue".



#_____________________________________________________________________


# Faites la même chose pour un nuage de points. 
# Modifiez la couleur des points du graphique :

plot(x)

# _________________________________________________________________________________________


#¸.·´¯`·.´¯`·.¸¸.·´¯`·.¸><(((º> ¸.·´¯`·.´¯`·.¸¸.·´¯`·.¸><(((º>¸.·´¯`·.´¯`·.¸¸.·´¯`·.¸><(((º>
          #######################
# B) ✿♥✿░   FORMES  & TAILLES  ░✿♥✿     ¸.·´¯`·.´¯`·.¸¸.·´¯`·.¸><(((º>
#         #######################
# ¸.·´¯`·.´¯`·.¸¸.·´¯`·.¸.·´¯`·.´¯`·.¸¸.·´¯`·.¸><(((º>


# Si vous faites une presentation, vous pouvez rendre vos points plus
# visibles. On peut modifier la forme des points grâce a l'option "point character". 
# On va l'ajouter apres la couleur et apres une virgule:
# pch=        Puis, on choisi un chiffre qui correspondra a une forme precise.
# Voici un exemple:
plot(x, col="pink", pch=13)

# Mission: rendez ce graphique plus visible ! :p 
# Pour savoir quel chiffre correspond a quelle forme, tapez la commande ci-dessous :
# Elle vous permet d'acceder a l'aide de RStudio.

help(pch)

# Parmi la multitude d'informations dans l'aide, chercher l'image qui comprend des chiffres
# associes a des formes. 
# Choisir la forme et la couleur la plus appropriee et recreer un graphique qui se voit bien de loin.
# Remplacez les ?? par l'element approprie:

plot(x, col="??", pch=??)

#________________________________________________________
# A nouveau, changez la couleur et la forme du point pour rendre le graphique 
# bien visible lors d'une publication.


x <- c(1,2,3,3,3,3,4,4,4,5,5,5,5,5,6,6,6,6,6,6,7,7,7,8,9,10)
y <- c(2,3,4,5,7,7,6,6,6,6,6,6,5,5,5,5,5,4,4,4,3,3,3,3,2,1)
plot(x,y, col=8, pch=2)



#_____________________________________________________
# Creons un graphique avec deux listes de mots. En fait, ces listes sont liees. 
# Le premier homme de la liste est un fumeur, le second ne l'est pas etc.

sexe <- c("Homme","Homme","Homme","Homme","Homme", "Femme", "Femme", "Femme")
sexe

fumeurs <- c("Fumeur","Non_fumeur","Fumeur","Fumeur","Non_fumeur","Fumeur","Fumeur", "Non_fumeur")
fumeurs

# Avant de faire le graphqique, nous devons creer un tableau qui compte le nombre de femmes fumeuses ou non 
# et le nombre d'hommes fumeurs ou non.

occurrences <- table(sexe,fumeurs)
occurrences

# Combien y a-t-il de femmes fumeuses et combien d'hommes non-fumeurs?


# Reponse : ...................................

# Si on applique la fonction  addmargins() a occurrences, que voit-on en plus dans le tableau ?

addmargins(occurrences)

# Creons le graphique en barre :

barplot(occurrences)

# Pas tres elegant ce graphique...ajoutons une couleur. Allez-y! Vous savez le faire a present...hehehehe....
# Mince....on remarque deux problemes.....Lesquels ?  hein, hein, hein ! ;p 




# Trouve ? OUI!!! on ne sait pas quelle couleur distingue un sexe d'un autre ! 
# Il nous faut deux couleurs, soit une couleur par sexe !
# Pour cela, ajoutez : col= puis c qui veut dire concatener/combiner puis vos deux 
# couleurs entre parenthese et juxtaposees par une virgule. 
# C'est la même chose que pour la creation d'une liste de mots. 
# Cela indique a R qu'il doit traiter des elements distincts.
# Faut tout lui dire ... franchement...

barplot(occurrences, col=c("blue", "green"))

# Probleme 2 : i n'y a pas de legende pour nous dire a quel sexe correspond chaque couleur...



# Observez bien ce que je viens de rajouter dans la ligne de commande. 

barplot(occurrences, col=c("blue", "green"), legend=TRUE)

# legend=    veut dire: "concernant la legende......"
# si j'ajoute TRUE  cela veut dire que je dis a R :
# "concernant la legende......mets-la moi!"

# si j'ajoute FALSE  cela veut dire que je dis a R :
# "concernant la legende......je n'en veux pas !"


# A vous ! Changez la couleur du graphique en barre suivant et ajoutez une legende.

barplot(occurrences) 




##########################################
#                                        #
# [̲̅T̲̅][̲̅I̲̅][̲̅T̲̅][̲̅R̲̅][̲̅E̲̅][̲̅S̲] [̲̅E̲̅][̲̅T̲̅] [̲̅A̲̅][̲̅X̲̅][̲̅E̲̅][̲̅S̲̅] #
#˜”*°•.˜”*°• TITRES ET AXES  •°*”˜.•°*”˜ #
#                 Ƹ̵̡Ӝ̵̨̄Ʒ                    #
##########################################
# ps: pour faire ces frises j'utilise : http://www.messletters.com/en/text-art/ 


# Bon, que representent ces graphiques...."au final" ?
# Ajoutons un titre principal.
# Comment dit-on "principal" en anglais ...?  
# Non pas de calque s'il vous plait...il n'y a qu'une lettre de difference entre 
# l'etat americain et le mot principal en anglais...alors?

plot(x, main="Ceci est le titre de mon graphique")

# Il n'est pas beau ce graphique...ajoutez la couleur et la forme des points qui vous convient.
# Voici le mien...

plot(x,y, main="Ceci est le titre de mon graphique", col="turquoise", pch=19, cex=2.5)

# A vous ! Ajoutez un titre a votre nuage de points.
# Ajoutez un titre a votre graphique en barre.
# a votre graphique circulaire aussi.

# Nuage de point avec titre:

# ............................

# Graphique en barre avec titre:

# ............................
# Graphique en circulaire avec titre:

# ............................

# Bon, nous les sciences humaines on aime les mots...et parfois les titres a rallonge.
# Que se passe-t-il si votre titre est plus long que les sanglots des violons de l'automne?
# Exemple : 
plot(x,y, main="Ceci est le titre de mon graphique qui est plus long que les sanglots longs des violons de l'automne")


# Solution 1 : le raccourcir.
# Solution 2 : mettre le titre sur plusieurs lignes. Avant chaque retour a la ligne, 
# tapez \n

plot(x,y, main="Ceci est le titre \n de mon graphique \n qui est plus long que \n les sanglots longs \n des violons de l'automne")

# C'est pas encore ça...mettez le titre sur 2 lignes maximum:



# ____________________________________________________________________
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@@@@ MODIFIER LES AXES ]@@@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@



# Rappel des valeurs de x et y
x <- c(1,2,3,3,3,3,4,4,4,5,5,5,5,5,6,6,6,6,6,6,7,7,7,8,9,10)
y <- c(2,3,4,5,7,7,6,6,6,6,6,6,5,5,5,5,5,4,4,4,3,3,3,3,2,1)

# Changeons le nom des axes pour rendre le graphique plus clair. On dit qu'on "labelise les axes" x et y.
# Les parametres seront xlab=" "  et ylab=" " respectivement.
# Essayez:

plot(x,y, xlab="Pincemi", ylab="et Pincemoi", main="Sont dans un bateau")

# pour comprendre ma petite blague...: http://www.letopweb.org/blague/index.php?id=7

# Bon, soyez plus serieux que moi et ecrivez des noms d'axes et un titre plus adequats :
# x : Valeur des x (cm)
# y : Valeur des y (secondes)
# titre : a vous de le choisir !
# C'est parti :



# Desolee mais moi, de loin, je ne voix pas bien le nom des axes...je vieillis un peu...
# Agrandissez-les a l'aide de 
# cex.lab = 2.5 s'il vous plaît en Remplacant les ??????? : 

plot(x,y, xlab="Pincemi",ylab="et Pincemoi", ???????, main="Sont dans un bateau")

# Mettez un chiffre moins gros et executez a nouveau la fonction.

# Zut le titre a l'air plus petit maintenant....utilisez cex.main pour agrandir le titre.
# Voici un exemple :

plot(x,y, xlab="Pincemi",ylab="et Pincemoi", cex.lab=1.5, cex.main=1.5, main="Sont dans un bateau")


# Bon, il reste les points a modifier. Remplissez-les a l'aide de pch=19 et agrandissez-les
# a l'aide de cex=4. Ajoutez ces 2 parametres a l'interieur de la ligne de code. Ou vous voulez
# mais APRES plot(x,y, ......)


plot(x,y, xlab="Pincemi", ylab="et Pincemoi", cex.lab=1.5, cex.main=1.5, main="Sont dans un bateau")



# A vous ! Faites un graphique parfaitement lisible de loin pour une presentation PowerPoint:
# Titre et axes presents, taille des titres et axes plus grande, points plus gros :



#______________________________________________________________________________
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@@@ MODIFIER LES LIGNES @@@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

# Modifiez les parametres d'un graphique representant une ligne.
# type="l" indique que l'on veut une ligne ("l") qui reliera les points du graphique.

# Cela peut etre remplace par:
# type="p" on veut juste des points (p)
# ou
# type="o" on veut une ligne ET des points 

# lty=     indique le type de ligne (6 options possibles). En anglais : line type, d'ou "lty"
# pour les intimes.
# lwd=     l'epaisseur de cette ligne. En anglais : line width, soit lwd

# Manipulez les parametres graphiques de type= , de col= et de lty= et lwd= en changeant la 
# couleur, le type de ligne, l'epaisseur de la ligne :
plot(x,y, type="l", col="red", lty=2, lwd=5)

# Ex: 
plot(x,y, type="o", col="turquoise", lty=1, lwd=0.5)



# Pour allez plus loin, modifiez l'aspect des points et la taille...Indice :
# Il/elle n'a "point de caractere" et ne trouve pas son pendant du "sexe" oppose.

plot(x,y, type="o", col="coral", lty=1, lwd=0.5, ??????, ??????)


# Et ils sont ou mes titres d'axes et mon titre principal ?
# Faites-moi un graphique tout "nickel propre"....non mais ! ;p



#  __________________________________________________________
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@ PLUSIEURS GRAPHIQUES DANS LA FENETRE PLOTS @@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@


par(mfrow=c(1,2))

# par veut dire parametre. 
# mf  ..........matrix frame. Plus ou moins un quadrillage dans un cadre sur lequel on va coller 
#               nos graphiques.
# row ..........ligne ou rangee. Indique que l'on devra indiquer le nombre de lignes de graphiques 
#               a l'horizontal en premier dans les parametres. 
# c(1,2) : sur 1 même ligne, je veux 2 graphiques:
               
# Verifiez si j'ai raison :

plot(x,y, type="o", col="coral", lty=1, lwd=0.5, main="Title")
plot(x,y, type="o", col="turquoise", lty=1, lwd=0.5, main="Title")


# Si l'on inverse les chiffres on veut 2 graphiques sur 1 même ligne verticale.

par(mfrow=c(2,1))


plot(x,y, type="o", col="coral", lty=1, lwd=0.5, main="Title")
plot(x,y, type="o", col="turquoise", lty=1, lwd=0.5, main="Title")


# Si l'on veut retrouver un seul graphique dans la fenêtre plot pour reinitialiser les
# parametres que fait-on ? Remplacez les ? par le chiffre qui convient.
# Finalement cela revient a dire que l'on veut ? graphique sur ? ligne horizontale.

par(mfrow=c(?,?))

# Testez :
plot(x,y, type="o", col="coral", lty=1, lwd=0.5, main="Title")
plot(x,y, type="o", col="turquoise", lty=1, lwd=0.5, main="Title")

# Et si l'on vous demande de mettre 4 graphiques sur 2 lignes et 2 colonnes. Comment faire ?
# Donc on aura 2 graphiques par ligne et 2 graphiques par colonne :
par(mfrow=c(2,2))


# Testez :
plot(x,y, type="o", col="coral", lty=1, lwd=0.5, main="Title")
plot(x,y, type="o", col="turquoise", lty=1, lwd=0.5, main="Title")
plot(x,y, type="o", col="red", lty=1, lwd=0.5, main="Title")
plot(x,y, type="o", col="green", lty=1, lwd=0.5, main="Title")

# Re-creez les 4 plots ci-dessus et observez comment les plots 
# se positionnent dans la fenêtre.
# Mission : mettre les graphiques aux couleurs chaudes sur la premiere ligne.
# Dans quel ordre allez-vous executer vos plots pour remplir la mission ?



# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@ ENREGISTRER UN GRAPHIQUE @@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

# Vous avez passe l'epreuve de feu des graphiques....Vous pouvez encadrer vos graphiques
# ...dans R...ou plutôt les sauvegarder.
# Allez dans Export qui se trouve dans le cadre au dessus-de votre graphique.
# Sauvegardez votre graphique ou vous le souhaitez en cliquant sur "save as image".
# 
# Une fenêtre s'ouvre. Pour enregistrer votre graphique a un endroit voulu, cliquez sur
# "Directory". Choisissez l'endroit ou vous voulez enregistrer vos graphiques.
# Renommez votre graphique a côte de "file name".
# Puis : cliquez sur le bouton "save".

# Sauvegardez un graphique effectue precedemment : dans la fenêtre "Plots" 
# cliquez sur la fleche de gauche bleue jusqu'a ce que vous 
# trouviez le graphique a sauvegarder. => Export et save "save as image".

# Verifiez qu'il a bien ete enregistre... on ne sais jamais ... avec ces vilaines betes
# d'ordinateurs...


# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@@ ........ QUIZZ....... @@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

# Rappel des valeurs de x et y
x <- c(1,2,3,3,3,3,4,4,4,5,5,5,5,5,6,6,6,6,6,6,7,7,7,8,9,10)
y <- c(2,3,4,5,7,7,6,6,6,6,6,6,5,5,5,5,5,4,4,4,3,3,3,3,2,1)

# Vous colorez un histogramme et un nuage de point en rouge. Quel code ajoutez-vous ?
hist(x)
plot(x,y)
# Ajoutez un titre au nuage de points et labellisez les axes x et y.

# Vous attribuez deux couleurs au graphique en barre ci-dessous :

barplot(sexe)
# Ajoutez une legende et un titre a ce barplot.


# Les points de ce nuage de points ne sont pas du tout visibles. 

plot(x,y, col="lightgrey", cex=0.5, pch=3, main=":0/ Graphique peu visible :0/")

# A quoi correspond cex ?

# A quoi corresopnd pch ?

# Proposez un graphique plus adequat et...modifiez le titre ! :)

# Euh comment on enregistre son graphique, deja....?

# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@@ BILAN DE LA SEANCE @@@@@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

# Je sais :

# Mettre un titre au graphique : oui/ non
# Labelliser les axes : oui/ non
# Ajouter une legende a un graphique en barre : oui/ non

# Colorer un graphique : oui/ non
# Ajouter plusieurs couleurs a un graphique : oui/ non

# Augmenter la taille des points d'un nuage de points : oui/ non
# Modifier la forme des points d'un nuage de points : oui/ non

# Mettre plusieurs graphique dans une meme fenetre plot : oui/non


# Enregistrer son graphique.
