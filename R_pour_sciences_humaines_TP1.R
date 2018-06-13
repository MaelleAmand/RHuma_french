# ******************************************************************
#   
#           ** TP1 : R pour sciences humaines **
#                       (Maelle AMAND)
# 
# ******************************************************************
#   
# A la base, R est une grosse machine à calculer. 
# Au début des ordinateurs appelait ce genre de machines
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
# un vector" (English:"you assign values to a vector")

calcul1 <- 777*10
# vérifions si calcul1 contient bien le résultat de notre calcul 
calcul1

# A vous! Changez le nom du vecteur et changez le calcul: 



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
# Cela peut etre la taille des participants à ce stage ! 
# Appliquez ensuite la fonction summary à votre vecteur !





# La fonction sqrt peut être utile. A votre avis, que fait-elle?
sqrt(25)



# On peut aussi calculer le carré ou le cube d'un chiffre. 

3^2
6^2

# A vous ! Calculez le carré du chiffre de votre choix:




# Un peu de déduction !
# Sachant que 4^2 permet de calculer 
# le carré de 4, quel sera le cube de 4 ?




# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@@ PREMIERS GRAPHIQUES @@@@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@


# Avec UNE série de chiffres on peut faire un nuage de points:
# (English: scatterplot)
# On prépare d'abord sa série de chiffre. Puis, on utilise la 
# fonction plot()

x <- c(1,2,3,3,3,3,4,4,4,5,5,5,5,5,6,6,6,6,6,6,7,7,7,8,9,10)
plot(x)

# Avec une série de chiffres on peut aussi faire un histogramme:
# (English; histogram)

hist(x)
hist(x, col="lightblue")

# Pour un graphique plus joli on peut utiliser la fonction
# qplot(). Le "q" de qplot veut dire "quick" plot. 
# Pour utiliser cette fonction, installez le package 
# ggplot2 (m'appeler pour que je vous aide). Puis activez-le
# à l'aide de la commande:
library(ggplot2)

qplot(x)

# A votre avis, quelle est la différence entre 
# le premier histogramme et le second ? (à part la différence de couleurs)


qplot(x)

# A vous ! Créez un histogramme à partir d'une série de chiffres
# Utilisez hist(), puis qplot()




#________________________________________________________________

# # Avec DEUX séries de chiffres on peut faire un nuage de points:
# (English: scatterplot)
# On prépare d'abord ses séries de chiffres. Puis, on utilise la 
# fonction plot() à nouveaux

x <- c(1,2,3,3,3,3,4,4,4,5,5,5,5,5,6,6,6,6,6,6,7,7,7,8,9,10)
y <- c(1,1,3,3.5,3,3,4,4,4,5,5,5,5,5,6,6,6.5,6,6,6,7.5,7,7,8.5,9,10)
plot(x,y)
qplot(x,y)


# Que se passe-t-il si l'on tape: plot(y,x) ? ESt-ce pareil pour
# qplot(y,x)




# Changez la dernière valeur de y à 5. Refaites le graphique.
# Observez la différence.



# A vous ! Créez 2 séries de chiffres et utilisez la fonction plot.