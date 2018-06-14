# ******************************************************************
#   
#           ** TP1 : R pour sciences humaines **
#                       (Maelle AMAND)
# 
# ******************************************************************
#   
# A la base, R est une grosse machine à calculer. 
# Au début des ordinateurs, on appelait ce genre de machines
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


# A vous! Tapez quelques calculs et observez le résultat:

# ________________________________________________________________
# ________________________________________________________________
# ________________________________________________________________

# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@@ CREATION DE VECTEURS @@@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@


# Donnons un nom à notre calcul: on dit qu'on "stocke le calcul dans
# un vecteur" (English:"you assign values to a vector")

calcul1 <- 777*10

# vérifions si calcul1 contient bien le résultat de notre calcul. Tapez:

calcul1

# A vous ! Changez le nom du vecteur et changez le calcul: 



# ________________________________________________________________
# ________________________________________________________________
# ________________________________________________________________

# On peut donner un nom à une liste de mots :

mots <- c("cailloux","choux","genoux","hiboux", "poux")
mots


# On peut aussi donner un nom à une liste d'énoncés. Ce qui importe c'est de 
# mettre l'énoncé entre " ".

poeme <-c("Ma vie à la tienne est tressée" , "Comme on tresse des fils soyeux," , "Et je pense avec ta pensée," , "Et je regarde avec tes yeux.")
poeme


# A vous! Changez la liste de mot et stockez-la dans un vecteur. Puis faites de même
# avec un énoncé:



# ________________________________________________________________
# ________________________________________________________________
# ________________________________________________________________


# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@@ PREMIERES FONCTIONS @@@@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

# R peut calculer la moyenne d'une série de chiffres.
# on utilise le mot anglais: mean. 
# On prépare d'abord le vecteur qui contient
# cette série de chiffres. Puis on fait la moyenne en 
# tapant la fonction mean puis on ajoute le vecteur entre parenthèses.


notes <- c(4,4,8,8)
mean(notes)

# Quand on a des chiffres, la fonction summary donne des informations
# supplémentaires. Lesquelles ?
summary(notes)



# A vous ! Calculez la moyenne d'une série de chiffres de votre choix !
# Cela peut être la taille des participants à ce stage ! 
# Appliquez ensuite la fonction summary à votre vecteur !





# La fonction sqrt peut être utile. A votre avis, que fait-elle?
sqrt(25)



# On peut aussi calculer le carré ou le cube d'un chiffre. 

3^2
6^2

# A vous ! Calculez le carré du chiffre de votre choix:




# Un peu de déduction !
# Sachant que 4^2 permet de calculer 
# le carré de 4, comment calculer le cube de 4 dans RStudio ?




# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@@ PREMIERS GRAPHIQUES @@@@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

# A) AVEC DES CHIFFRES SEULEMENT (DONNEES QUANTITATIVES)

# Avec UNE série de chiffres on peut faire un nuage de points:
# (English: scatterplot)
# On prépare d'abord sa série de chiffre. Puis, on utilise la 
# fonction plot()

x <- c(1,2,3,3,3,3,4,4,4,5,5,5,5,5,6,6,6,6,6,6,7,7,7,8,9,10)
plot(x)

# INTERPRETATION: L'axe horizontal représente l'ordre de chaque chiffre dans la liste (index).
# L'axe vertical représente les valeurs numériques listées dans x.

# Avec une série de chiffres on peut aussi faire un histogramme:
# (English; histogram)

hist(x)
hist(x, col="lightblue")
# INTERPRETATION: l'axe x indique les tranches de valeurs de la liste de chiffre. 
# (Un peu comme des tranches d'âge créés à partir d'un liste d'âge de personnes).
# l'axe des y indique le nombre de chiffres compris dans chaque tranche. 
# Vérifiez que cela est bien le cas !



# ☆ ∩∩ （ • •）☆
# ┏━∪∪━━━━━━━━┓
# ☆
# ❝ ggplot2 is kawai!❞
# ┗━━━━━━━━━━━┛


# Pour un graphique plus joli voire "kawai" on peut utiliser la fonction
# qplot() du package ggplot2.
# Le "q" de qplot veut dire "quick" plot.
# Pour utiliser cette fonction, installez le package ggplot2 (= fonctions bonus)
# grâce à la première ligne de commande ci-dessous.
# Puis activez-le à l'aide de la second commande. On dit que les packages sont stockés dans une 
# bibliothèque de package. A l'instar d'un livre que l'on veut utiliser, on va chercher un package 
# parmi les rayons de la bibliothèque de RStudio.

install.packages("ggplot2")

library(ggplot2)

qplot(x)

# Il s'agit également d'un histogramme, mais à votre avis, quelle est la différence entre 
# le premier histogramme et le second ? (à part la différence de couleurs ;p).


qplot(x)

# A vous ! Créez un histogramme à partir d'UNE série de chiffres. 
# Nommer le vecteur x1
# Utilisez hist(), puis qplot()




#________________________________________________________________

# # Avec DEUX séries de chiffres on peut faire un nuage de points:
# (English: scatterplot)
# On prépare d'abord ses séries de chiffres. Puis, on utilise la 
# fonction plot() à nouveaux

x <- c(1,2,3,3,3,3,4,4,4,5,5,5,5,5,6,6,6,6,6,6,7,7,7,8,9,10)
y <- c(2,3,4,5,7,7,6,6,6,6,6,6,5,5,5,5,5,4,4,4,3,3,3,3,2,1)
plot(x,y)
qplot(x,y)


# Que se passe-t-il si l'on tape: plot(y,x) ? ESt-ce pareil pour
qplot(y,x)




# Changez la dernière valeur de y à 10. Refaites le graphique.
# Observez la différence.



# A vous ! Créez 2 séries de chiffres stockées dans un vecteur chacune et utilisez la fonction plot.
# Nommez les vecteurs x2 et y2





#___________________________________________________________________________________
# On peut aussi faire un graphique avec des lignes :
plot(x)
plot(x,type="l") # "l" est une abbréviation pour ligne.
plot(x,type="l", col="red")


# Faites votre graphique avec votre vecteur x2



# Dans la ligne plot(x2,type="l") Changez "l" en "o" et tapez la 
# commande ci-dessous :


# ...................
# Executez-là. (ctrl+ENTER)
# Qu'observez-vous sur le graphique?




# _________________________________________________________________
# :¨·.·¨:
# `·. ★The goal is to turn data into information, and information into insight.★°*ﾟ (Carly Fiorina, Former CEO of HP)
# _________________________________________________________________


# B) AVEC DES DONNEES TEXTUELLES (QUALITATIVES)
# Attention, les guillemets sont obligatoire quand on crée
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

# A vous 1 ! Crééz une nouvelle liste et faites les graphiques.

# A vous 2 ! Pour convertir les fréquences en pourcentages on 
# multiplie le vecteur frequence par 100. Essayez ! 





# stockez cette multiplication dans un vecteur nommé pourcentage.


# faites les graphiques avec ce vecteur nommé pourcentage !



# A votre avis: à quoi servent les fonctions table(), barplot(), 
# pie() et prop.table(table())?

# table() ......................................................

# barplot() ....................................................

# pie() ........................................................

# prop.table(table()) ..........................................



# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@@@@@@@@ QUIZ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

# A quoi servent la fonction mean() et sqrt()?

# Réponse: ..........................................

# Si l'on veut faire la somme d'une liste. Qu'elle est la fonction
# la plus probable? (N'hésitez-pas à les tester)

# a) somme() b) SUM() c) sum() d) Sum()

# Réponse: ..........................................


# Dans la ligne de code ci-dessous, quel est le vecteur ?

sexe <- c("Homme","Homme","Homme","Homme","Homme", "Femme", "Femme", "Femme")

# Réponse : ..........................................



# Quel graphiques permettent de représenter des chiffres ?

# Réponse: ..........................................



# Comment peut-on créer un graphique avec une ligne ?

# Réponse: ..........................................


# Que doit-on ajouter à droite et à gauche
# de chaque élément d'une liste de mots/d'énoncés?
# Ex: mots <- c(?homme?, ?femme?.....)

# Réponse: ..........................................


# Quelle fonction permet la création d'un graphique en barre ?

# Réponse: ..........................................


# Quelle fonction permet la création d'un graphique circulaire ?

# Réponse: ..........................................

# Comment calculer le nombre d'occurences dans une série de mots?

# Réponse: ..........................................

# Comment convertir ce nombre en fréquence ?

# Réponse: ..........................................

# Comment convertir les fréquences en pourcentages ?

# Réponse: ..........................................


# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@@ BILAN DE LA SEANCE @@@@@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@


# Je sais faire : 
# un calcul de base avec R : Oui / Non
# la moyenne d'une série de chiffres : Oui / Non
# la somme d'une série de chiffres: Oui / Non
# la racine carrée d'un chiffre : Oui / Non

# Je sais :
# utiliser la fonction summary() : Oui / Non
# créer un vecteur  : Oui / Non
# créer une liste de données qualitatives : Oui / Non

# Je peux créer un graphique avec :
# Une série de chiffres : Oui / Non
# Deux séries de chiffres Oui / Non
# Une série de données qualitatives : Oui / Non



# Combien de "oui" avez-vous ? Combien de "non" ?