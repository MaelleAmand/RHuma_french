# ******************************************************************
#   
#           ** TP1 : R pour sciences humaines **
#                       (Maelle AMAND)
# 
# ******************************************************************
# NB: Pour des raisons de format, j'eviterai tout accent a la francaise.  


# A la base, R est une grosse machine a calculer. 
# Au debut des ordinateurs, on appelait ce genre de machines
# "number crunching machines".

# Faisons quelques calculs...

# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@@ CALCULS DE BASE @@@@@@@@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

2+4

777*10

(5+5)*2

67*2

67/0.5


# A vous ! Tapez quelques calculs et observez le resultat :

# ________________________________________________________________
# ________________________________________________________________
# ________________________________________________________________

# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@@ CREATION DE VECTEURS @@@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@


# Donnons un nom a notre calcul : on dit qu'on "stocke le calcul dans
# un vecteur" (English:"you assign values to a vector")

calcul1 <- 777*10

# verifions si calcul1 contient bien le resultat de notre calcul. Tapez :

calcul1

# A vous ! Changez le nom du vecteur et changez le calcul : 



# ________________________________________________________________
# ________________________________________________________________
# ________________________________________________________________

# On peut donner un nom a une liste de mots. Des qu'on ajoute plusieurs elements dans le 
# vecteur on doit ajouter un "c" qui veut dire "combine", ouvrir des parentheses et mettre les 
# mots ou caractères entre " ". On ajouter une vigule entre les mots :

mots <- c("cailloux","choux","genoux","hiboux", "poux")
mots


# On peut aussi donner un nom a une liste d'enonces. Ce qui importe c'est de 
# mettre l'enonce entre " ".

poeme <-c("Ma vie a la tienne est tressée" , "Comme on tresse des fils soyeux," , "Et je pense avec ta pensée," , "Et je regarde avec tes yeux.")
poeme


# A vous ! Changez la liste de mot et stockez-la dans un vecteur. Puis faites de meme
# avec un enonce :



# ________________________________________________________________
# ________________________________________________________________
# ________________________________________________________________


# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@@ PREMIERES FONCTIONS @@@@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

# R peut calculer la moyenne et la mediane d'une serie de chiffres.
# on utilise les mots anglais mean et median respectivement. 
# On prepare d'abord le vecteur qui contient
# cette serie de chiffres.
# Puis on fait la moyenne en tapant la fonction mean puis on ajoute le vecteur entre parentheses.
# On dit qu'on applique une fonction a un vecteur. (English: you apply a function to a vector)


notes <- c(4,4,8,8,8,5,7,10,9.5)
mean(notes)

# Faites la moyenne vous-meme en utilisant R comme calculatrice en la
# stockant dans un vecteur moyenne 
# comparez les resultats:

moyenne <- (4+4??????)/??
moyenne


# La mediane est aussi tres utile car elle sert a donner une sorte de moyenne qui n'est pas influencee par les valeurs extremes :
# Les experts en immobilier, les phoneticiens conseillent d'utiliser la mediane :

# "L’avantage de la mediane comme mesure de
# tendance centrale est qu’elle n’est pas
# influencee par les valeurs extrêmes. a
# l’inverse, l’inconvenient du prix moyen, comme
# toute moyenne d’ailleurs, est justement qu’il
# est influence par ces valeurs extrêmes, ce qui
# peut creer des distorsions majeures
# susceptibles de fausser l’interpretation des
# donnees."
# http://fciq.ca/pdf/Carrefour/definitions/fr/prix_median.pdf

# Pour calculer la mediane, voici la recette :

# Choisir des donnees numeriques
# Les ranger par ordre croissant
# Si le nombre de chiffres dans les donnees est impair, la mediane est le chiffre du milieu.
# Si le nombre de chiffres dans les donnees est pair, la mediane est la moyenne des 2 chiffres du milieu.

# A vous ! Reperez la mediane de ces chiffres deja ordonnes. Verifiez en applican la fonction median a chaque vecteur.

serie1 <- c(4,4,5,7,8,8,8,9.5,10)

serie2 <- c(1,2,3,4,5,6,7)

serie3 <- c(1, 2.285714, 3.571429, 4.857143, 6.142857, 7.428571, 8.714286, 10)

serie4 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)


# Comparez la moyenne et la mediane de ces notes de traduction litteraire sur 20. Les notes 
# negatives indique un tres grand nombre de points fautes.

# A vue de nez, la plupart des étudiants ont quelle note ?
# Il y a 3 étudiants aux notes extremes, quels sont-ils ?

serie5 <- c(-70, -56, 2, 4, 4, 5, 5.25 , 5.5, 5.75, 6, 7, 8, 11.5, 15.75)

mean(serie5)
median(serie5)
# A votre avis, entre la moyenne et la mediane, laquelle reflete le mieux les notes de la classe.


# Quand on a des chiffres, la fonction summary donne des informations
# supplementaires. Lesquelles ? 
# Que remarquez-vous au niveau de la mediane et de la moyenne?

summary(serie5)

# Faites de meme pour les series 1 a 4


#______________________________________________________________________

# A vous ! Calculez la moyenne et la mediane d'une serie de chiffres de votre choix !
# Cela peut etre la taille des participants a ce stage ! 
# Appliquez ensuite la fonction summary a votre vecteur !





# La fonction sqrt peut être utile. A votre avis, que fait-elle?
sqrt(25)



# On peut aussi calculer le carre ou le cube d'un chiffre. 

3^2
6^2

# A vous ! Calculez le carre du chiffre de votre choix:




# Un peu de deduction !
# Sachant que 4^2 permet de calculer 
# le carre de 4, comment calculer le cube de 4 dans RStudio ?




# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@@ PREMIERS GRAPHIQUES @@@@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

# A) AVEC DES CHIFFRES SEULEMENT (DONNEES QUANTITATIVES)

# Avec UNE serie de chiffres on peut faire un nuage de points:
# (English: scatterplot)
# On prepare d'abord sa serie de chiffre. Puis, on utilise la 
# fonction plot()

x <- c(1,2,3,3,3,3,4,4,4,5,5,5,5,5,6,6,6,6,6,6,7,7,7,8,9,10)
plot(x)

# INTERPRETATION: ici, l'axe horizontal represente l'ordre de chaque chiffre dans la liste (index).
# L'axe vertical represente les valeurs numeriques listees dans x.

# Avec une serie de chiffres on peut aussi faire un histogramme:
# (English; histogram)

hist(x)
hist(x, col="lightblue")

# INTERPRETATION: l'axe x indique les tranches de valeurs de la liste de chiffre. 
# (Un peu comme des tranches d'âge crees a partir d'un liste d'age de personnes).
# l'axe des y indique le nombre de chiffres compris dans chaque tranche. 
# verifiez que cela est bien le cas !



# ☆ ∩∩ （ • •）☆
# ┏━∪∪━━━━━━━━┓
# ☆
# ❝ ggplot2 is kawai!❞
# ┗━━━━━━━━━━━┛


# Pour un graphique plus joli voire "kawai" on peut utiliser la fonction
# qplot() du package ggplot2.
# Le "q" de qplot veut dire "quick" plot.
# Pour utiliser cette fonction, installez le package ggplot2 
# Fonction: install.packages("ggplot2")

# Puis activez-le a l'aide de la second commande: library(ggplot2).
# On dit que les packages sont stockes dans une 
# bibliotheque de package. A l'instar d'un livre que l'on veut utiliser, 
# on va chercher un package parmi les rayons de la bibliotheque de RStudio.

install.packages("ggplot2")

library(ggplot2)

qplot(x)

# Il s'agit egalement d'un histogramme, mais a votre avis, quelle est la difference entre 
# le premier histogramme et le second ? (a part la difference de couleurs ;p).


qplot(x)

# A vous ! Creez un histogramme a partir d'UNE serie de chiffres. 
# Nommer le vecteur x1
# Utilisez hist(), puis qplot()




#________________________________________________________________

# # Avec DEUX series de chiffres on peut faire un nuage de points :
# (English: scatterplot)
# On prepare d'abord ses series de chiffres. 
# Puis, on utilise la fonction plot() a nouveau :

x <- c(1,2,3,3,3,3,4,4,4,5,5,5,5,5,6,6,6,6,6,6,7,7,7,8,9,10)
y <- c(2,3,4,5,7,7,6,6,6,6,6,6,5,5,5,5,5,4,4,4,3,3,3,3,2,1)
plot(x,y)
qplot(x,y)


# Que se passe-t-il si l'on tape: plot(y,x) ? ESt-ce pareil pour
qplot(y,x)




# Changez la dernière valeur de y a 10. Refaites le graphique.
# Observez la difference.



# A vous ! Creez 2 series de chiffres stockees dans un vecteur chacune et utilisez la fonction plot.
# Nommez les vecteurs x2 et y2





#___________________________________________________________________________________
# On peut aussi faire un graphique avec des lignes :
plot(x)
plot(x,type="l") # "l" est une abbreviation pour ligne.
plot(x,type="l", col="red")


# Faites votre graphique avec votre vecteur x2



# Dans la ligne plot(x2,type="l") Changez "l" en "o" et tapez la 
# commande ci-dessous :


# ...................
# Executez-la. (ctrl+ENTER)
# Qu'observez-vous sur le graphique ?




# _________________________________________________________________
# :¨·.·¨:
# `·. ★The goal is to turn data into information, 
#       and information into insight.★°*ﾟ
#                           
#                               (Carly Fiorina, Former CEO of HP)
# _________________________________________________________________


# B) AVEC DES DONNEES TEXTUELLES (QUALITATIVES)
# Attention, les guillemets sont obligatoire quand on cree
# une liste avec du texte.

sexe <- c("Homme","Homme","Homme","Homme","Homme", "Femme", "Femme", "Femme")
sexe

# graphique avec le nombre d'occurrences:

occurrences<- table(sexe)
occurrences
barplot(occurrences)
pie(occurrences)

# graphique avec la conversion en frequence:
frequence <- prop.table(table(sexe))
frequence

barplot(frequence)
pie(frequence)

# A vous 1 ! Creez une nouvelle liste et faites les graphiques.

# A vous 2 ! Pour convertir les frequences en pourcentages on 
# multiplie le vecteur frequence par 100. Essayez ! 





# stockez cette multiplication dans un vecteur nomme pourcentage.


# faites les graphiques avec ce vecteur nomme pourcentage !

# MINI RAPPEL :

# A votre avis: a quoi servent les fonctions table(), barplot(), 
# pie() et prop.table(table())?

# table() ......................................................

# barplot() ....................................................

# pie() ........................................................

# prop.table(table()) ..........................................



# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@@@@@@@@ QUIZ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

# A quoi servent la fonction mean() et sqrt()?

# Reponse: ..........................................

# Si l'on veut faire la somme d'une liste. Quelle est la fonction
# la plus probable? (N'hesitez-pas a les tester)

# a) somme() b) SUM() c) sum() d) Sum()

# Reponse: ..........................................


# Dans la ligne de code ci-dessous, quel est le vecteur ?

sexe <- c("Homme","Homme","Homme","Homme","Homme", "Femme", "Femme", "Femme")

# Reponse : ..........................................



# Quel graphiques permettent de representer des chiffres ?

# Reponse: ..........................................



# Comment peut-on creer un graphique avec une ligne ?

# Reponse: ..........................................


# Que doit-on ajouter a droite et a gauche
# de chaque element d'une liste de mots/d'enonces?
# Ex: mots <- c(?homme?, ?femme?.....)

# Reponse: ..........................................


# Quelle fonction permet la creation d'un graphique en barre ?

# Reponse: ..........................................


# Quelle fonction permet la creation d'un graphique circulaire ?

# Reponse: ..........................................

# Comment calculer le nombre d'occurences dans une serie de mots?

# Reponse: ..........................................

# Comment convertir ce nombre en frequence ?

# Reponse: ..........................................

# Comment convertir les frequences en pourcentages ?

# Reponse: ..........................................


# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@@ BILAN DE LA SEANCE @@@@@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@


# Je sais faire : 
# un calcul de base avec R : Oui / Non
# la moyenne d'une serie de chiffres : Oui / Non
# la somme d'une serie de chiffres: Oui / Non
# la racine carree d'un chiffre : Oui / Non

# Je sais :
# utiliser la fonction summary() : Oui / Non
# creer un vecteur : Oui / Non
# creer une liste de donnees qualitatives : Oui / Non

# Je peux creer un graphique avec :
# Une serie de chiffres : Oui / Non
# Deux series de chiffres Oui / Non
# Une serie de donnees qualitatives : Oui / Non



# Combien de "oui" avez-vous ? Combien de "non" ?