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

# Beaucoup d'études vantent les bienfaits des livres de coloriages.
# Colorions nous aussi nos graphiques pour faire baisser notre taux de stress 
# lorsque nous utilisons R ! 

# https://www.medicaldaily.com/therapeutic-science-adult-coloring-books-how-childhood-pastime-helps-adults-356280


# Faisons un histogramme à partir des données stockées dans un vecteur x :
x <- c(1,2,3,3,3,3,4,4,4,5,5,5,5,5,6,6,6,6,6,6,7,7,7,8,9,10)
hist(x) 

# Colorons l'histogramme en rouge ? l'aide de col="red". On ajoute une 
# vigule apr?s x et on place cette commande AVANT les parenthèses).

hist(x, col="red")

# A vous ! Modifiez la couleur en utilisant le nom des couleurs disponibles
# sur ce site: http://www.stat.columbia.edu/~tzheng/files/Rcolor.pdf




#_____________________________________________________________________


# Comme R aime les chiffres, il suffit parfois de rempacer "red" par un
# chiffre. 2 est le nom de code pour la couleur rouge. Les chiffres vont de 1 à 8.
# Il y a donc 8 couleurs de bases avec un chiffre comme nom de code.

hist(x, col=2)


# A vous ! Modifiez la couleurs en changeant les chiffres. Nottez les chiffres
# correspondant aux couleurs que vous êtes susceptible d'utiliser. Personnellement,
# j'ai tendance à utiliser "lightblue".



#_____________________________________________________________________


# Faites la même chose pour un nuage de points. 
# Modifiez la couleur des points du graphique:

plot(x)

# _________________________________________________________________________________________


#¸.·´¯`·.´¯`·.¸¸.·´¯`·.¸><(((º> ¸.·´¯`·.´¯`·.¸¸.·´¯`·.¸><(((º>¸.·´¯`·.´¯`·.¸¸.·´¯`·.¸><(((º>
          #######################
# B) ✿♥✿░   FORMES  & TAILLES  ░✿♥✿     ¸.·´¯`·.´¯`·.¸¸.·´¯`·.¸><(((º>
#         #######################
# ¸.·´¯`·.´¯`·.¸¸.·´¯`·.¸.·´¯`·.´¯`·.¸¸.·´¯`·.¸><(((º>


# Si vous faites une présentation, vous pouvez rendre vos points plus
# visibles. On peut modifier la forme des points grâce à l'option "point character". 
# On va l'ajouter après la couleur et après une virgule:
# pch=        Puis, on choisi un chiffre qui correspondra à une forme précise.
# Voici un exemple:
plot(x, col="pink", pch=13)

# Mission: rendez ce graphique plus visible ! :p 
# Pour savoir quel chiffre correspond à quelle forme, tapez la commande ci-dessous :
# Elle vous permet d'accéder à l'aide de RStudio.

help(pch)

# Parmi la multitude d'informations dans l'aide, chercher l'image qui comprend des chiffres
# associés à des formes. 
# Choisir la forme et la couleur la plus appropriée et recréer un graphique qui se voit bien de loin.
# Remplacez les ?? par l'élément approprié:

plot(x, col="??", pch=??)

#________________________________________________________
# A nouveau, changez la couleur et la forme du point pour rendre le graphique 
# bien visible lors d'une publication.


x <- c(1,2,3,3,3,3,4,4,4,5,5,5,5,5,6,6,6,6,6,6,7,7,7,8,9,10)
y <- c(2,3,4,5,7,7,6,6,6,6,6,6,5,5,5,5,5,4,4,4,3,3,3,3,2,1)
plot(x,y, col=8, pch=2)



#_____________________________________________________
# Créons un graphique avec deux listes de mots. En fait, ces listes sont liées. 
# Le premier homme de la liste est un fumeur, le second ne l'est pas etc.

sexe <- c("Homme","Homme","Homme","Homme","Homme", "Femme", "Femme", "Femme")
sexe

fumeurs <- c("Fumeur","Non_fumeur","Fumeur","Fumeur","Non_fumeur","Fumeur","Fumeur", "Non_fumeur")
fumeurs

# Avant de faire le graphqique, nous devons créer un tableau qui compte le nombre de femmes fumeuses ou non 
# et le nombre d'hommes fumeurs ou non.

occurrences <- table(sexe,fumeurs)
occurrences

# Combien y a-t-il de femmes fumeuses et combien d'hommes non-fumeurs?


# Réponse : ...................................

# Si applique la fonction  addmargins() à occurrences, que voit-on en plus dans le tableau ?

barplot(occurrences)

# Ajoutons une couleur. Allez-y! Vous savez le faire à présent...héhéhéhé....
# Mince....on remarque deux problèmes.....Lesquels ?  hein, hein, hein ! ;p 





# Trouvé ? OUI!!! on ne sais pas quelle couleur distingue un sexe d'un autre ! 
# Il nous faut deux couleurs, soit une couleur par sexe !
# Pour cela, ajoutez vos 2 couleurs entre parenthèse ET APRES le signe "=", mettez un 
# petit c qui veut dire concaténer/combiner. C'est la même chose que pour la 
# création d'une liste de mots ou de chiffres. Cela indique à R qu'il doit traiter des éléments distincts.
# Faut tout lui dire ... franchement...

barplot(occurrences, col=c("blue", "green"))

# Problème 2 : i n'y a pas de légende pour nous dire à quel sexe correspond chaque couleur...


# Observez bien ce que je viens de rajouter dans la ligne de commande. 

barplot(occurrences, col=c("blue", "green"), legend=TRUE)

# legend=    veut dire: "concernant la légende......"
# si j'ajoute TRUE  cela veut dire que je dis à R :
# "concernant la légende......mets-la moi!"

# si j'ajoute FALSE  cela veut dire que je dis à R :
# "concernant la légende......je n'en veux pas !"


# A vous ! Changez la couleur du graphique en barre suivant et ajoutez une légende.
barplot(occurrences) 




##########################################
#                                        #
# [̲̅T̲̅][̲̅I̲̅][̲̅T̲̅][̲̅R̲̅][̲̅E̲̅][̲̅S̲] [̲̅E̲̅][̲̅T̲̅] [̲̅A̲̅][̲̅X̲̅][̲̅E̲̅][̲̅S̲̅] #
#˜”*°•.˜”*°• TITRES ET AXES  •°*”˜.•°*”˜ #
#                 Ƹ̵̡Ӝ̵̨̄Ʒ                    #
##########################################
# ps: pour faire ces frises j'utilise : http://www.messletters.com/en/text-art/ 


# Bon, que représentent ces graphiques...."au final" ?
# Ajoutons un titre principal.
# Comment dit-on "principal" en anglais ...?  
# Non pas de calque s'il vous plaît...il n'y a qu'une lettre de différence entre 
# l'Etat américain et le mot principal en anglais...alors?

plot(x, main="Ceci est le titre de mon graphique")

# Il n'est pas beau ce graphique...ajoutez la couleur et la forme des points qui vous convient.
# Voici le mien...
plot(x,y, main="Ceci est le titre de mon graphique", col="turquoise", pch=19, cex=2.5)

# A vous ! Ajoutez un titre à votre nuage de points.
# Ajoutez un titre à votre graphique en barre.
# à votre graphique circulaire aussi.

# Nuage de point avec titre:

# ............................

# Graphique en barre avec titre:

# ............................
# Graphique en circulaire avec titre:

# ............................

# Bon, nous les sciences humaines on aime les mots...et parfois les titres à rallonge.
# Que se passe-t-il si votre titre est plus long que les sanglots des violons de l'automne?
# Exemple : 
plot(x,y, main="Ceci est le titre de mon graphique qui est plus long que les sanglots longs des violons de l'automne")


# Solution 1 : le raccourcir.
# Solution 2 : mettre le titre sur plusieurs lignes. Avant chaque retour à la ligne, 
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
# Les paramètres seront xlab=" "  et ylab=" " respectivement.
# Essayez:

plot(x,y, xlab="Pincemi", ylab="et Pincemoi", main="Sont dans un bateau")

# pour comprendre ma petite blague...: http://www.letopweb.org/blague/index.php?id=7

# Bon, soyez plus sérieux que moi et écrivez des noms d'axes et un titre plus adéquats :
# x : Valeur des x (cm)
# y : Valeur des y (secondes)
# titre : à vous de le choisir !
# C'est parti :



# Désolée mais moi, de loin, je ne voix pas bien les axes...Agrandissez-les à l'aide de 
# cex.lab = 2.5 s'il vous plaît. Remplacez les ??????? : 

plot(x,y, xlab="Pincemi",ylab="et Pincemoi", ???????, main="Sont dans un bateau")

# Mettez un chiffre moins gros et executez à novueau la fonction.

# Zut le titre à l'air plus petit maintenant....utilisez cex.main pour agrandir le titre:

plot(x,y, xlab="Pincemi",ylab="et Pincemoi", cex.lab=1.5, cex.main=1.5, main="Sont dans un bateau")


# Bon, il reste les points à modifier. Remplissez-les à l'aide de pch=19 et agrandissez-les
# à l'aide de cex=4. Ajoutez ces 2 paramètres à l'intérieur de la ligne de code. Ou vous voulez
# mais APRES plot(x,y, ......)


plot(x,y, xlab="Pincemi",ylab="et Pincemoi",cex.lab=1.5, cex.main=1.5, main="Sont dans un bateau")



# A vous ! Faites un graphique parfaitement lisible de loin pour une présentation PowerPoint:
# Titre et axes présents, taille des titres et axes plus grande, points plus gros :



#______________________________________________________________________________
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@@@ MODIFIER LES LIGNES @@@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

# Modifiez les paramètres d'un graphique représentant une ligne.
# type="l" indique que l'on veut une ligne ("l") qui reliera les points du graphique.

# Cela peut etre remplacé par:
# type="p" on veut juste des points (p)
# ou
# type="o" on veut une ligne ET des points 

# lty=     indique le type de ligne (6 options possibles). En anglais : line type, d'où "lty"
# pour les intimes.
# lwd=     l'épaisseur de cette ligne. En anglais : line width, soit lwd

# Manipulez les paramètres graphiques de type= , de col= et de lty= et lwd= en changeant la 
# couleur, le type de ligne, l'épaisseur de la ligne :
plot(x,y, type="l", col="red", lty=2, lwd=5)

# Ex: 
plot(x,y, type="o", col="turquoise", lty=1, lwd=0.5)



# Pour allez plus loin, modifiez l'aspect des points et la taille...Indice :
# Il/elle n'a "point de caractère" et ne trouve pas son pendant du "sexe" opposé.

plot(x,y, type="o", col="coral", lty=1, lwd=0.5, ??????, ??????)


# Et ils sont où mes titres d'axes et mon titre principal ?
# Faites-moi un graphique tout "nickel propre"....non mais ! ;p



#  __________________________________________________________
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@ PLUSIEURS GRAPHIQUES DANS LA FENETRE PLOTS @@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@


par(mfrow=c(1,2))

# par veut dire paramètre. 
# mf  ..........matrix frame. Plus ou moins un quadrillage dans un cadre sur lequel on va coller 
#               nos graphiques.
# row ..........ligne ou rangée. Indique que l'on devra indiquer le nombre de lignes de graphiques 
#               à l'horizontal en premier dans les paramètres. 
# c(1,2) : sur 1 même ligne, je veux 2 graphiques:
               
# Vérifiez si j'ai raison :

plot(x,y, type="o", col="coral", lty=1, lwd=0.5, main="Title")
plot(x,y, type="o", col="turquoise", lty=1, lwd=0.5, main="Title")


# Si l'on inverse les chiffres on veut 2 graphiques sur 1 même ligne verticale.

par(mfrow=c(2,1))


plot(x,y, type="o", col="coral", lty=1, lwd=0.5, main="Title")
plot(x,y, type="o", col="turquoise", lty=1, lwd=0.5, main="Title")


# Si l'on veut retrouver un seul graphique dans la fenêtre plot pour réinitialiser les
# paramètres que fait-on ? Remplacez les ? par le chiffre qui convient.
# Finalement cela revient à dire que l'on veut ? graphique sur ? ligne horizontale.

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

# Re-crééz les 4 plots ci-dessus et observez comment les plots 
# se positionnent dans la fenêtre.
# Mission : mettre les graphiques aux couleurs chaudes sur la première ligne.
# Dans quel ordre allez-vous executer vos plots pour remplir la mission ?



# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@ ENREGISTRER UN GRAPHIQUE @@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

# Vous avez passé l'épreuve de feu des graphiques....Vous pouvez encadrer vos graphiques
# ...dans R...ou plutôt les sauvegarder.
# Allez dans Export qui se trouve dans le cadre au dessus-de votre graphique.
# Sauvegardez votre graphique où vous le souhaitez en cliquant sur "save as image".
# 
# Une fenêtre s'ouvre. Pour enregistrer votre graphique à un endroit voulu, cliquez sur
# "Directory". Choisissez l'endroit où vous voulez enregistrer vos graphiques.
# Renommez votre graphique à côté de "file name".
# Puis : cliquez sur le bouton "save".

# Sauvegardez un graphique effectué précédemment : dans la fenêtre "Plots" 
# cliquez sur la flèche de gauche bleue jusqu'à ce que vous 
# trouviez le graphique à sauvegarder. => Export et save "save as image".

# Vérifiez qu'il a bien été enregistré... on ne sais jamais ... avec ces vilaines bêtes
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
# Ajoutez une légende et un titre à ce barplot.


# Les points de ce nuage de points ne sont pas du tout visibles. 

plot(x,y, col="lightgrey", cex=0.5, pch=3, main=":0/ Graphique peu visible :0/")

# A quoi correspond cex ?

# A quoi corresopnd pch ?

# Proposez un graphique plus adéquat et...modifiez le titre ! :)

# Euh comment on enregistre son graphique, déjà....?

# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@@ BILAN DE LA SEANCE @@@@@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

# Je sais :

# Mettre un titre au graphique : oui/ non
# Labelliser les axes : oui/ non
# Ajouter une légende à un graphique en barre : oui/ non

# Colorer un graphique : oui/ non
# Ajouter plusieurs couleurs à un graphique : oui/ non

# Augmenter la taille des points d'un nuage de points : oui/ non
# Modifier la forme des points d'un nuage de points : oui/ non

# Enregistrer son graphique.
