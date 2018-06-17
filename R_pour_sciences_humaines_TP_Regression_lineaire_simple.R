# ******************************************************************
#   
#                ** TP : R pour sciences humaines **
#                     Jeux de données dans R
#                               &
#                    Régression linéaire simple (niveau 1)
#                       (Maelle AMAND)
# 
# ******************************************************************
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@ Utiliser des données de R @@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

# Nous allons utiliser les jeux de données "anorexia" puis TitanicSurvical 
# stockés dans la mémoire de R.
# 
# Certains jeux de données sont rangés dans des packages.
# Installons le package MASS pour obtenir les données "anorexia".
install.packages("MASS")

# Activons le package MASS
library(MASS)

# Activons les données "anorexia"
data(anorexia)
attach(anorexia)

# Visualisons les données et retenons le noms des colonnes que l'on va appeler à présent
# variables :
View(anorexia)

# Pour comprendre ce que comprennent ces données faites :
help("anorexia")

# Ces données proviennent d'une expérience qui mesure l'amélioration du poids
# de jeunes femmes anorexiques (après et avant traitement)
# La variable Treat indique 3 groupes :
# 1) Cont: la patiente n'a reçu aucun traitement
# 2) CBT: la patiente a reçu un traitement "cognitive et comportemental"
# 3) FT: la famille a reçu un traitement en même temps que la patiente.

# La variable Prewt indique le poids en livres  (wt) avant traitement (pre) d'où Prewt
# La variable Postwt indique le poids en livres (wt) après traitement (post) d'où Postwt

# Question : en vous aidant de la page d'aide, trouvez la mesure utilisée pour le poids
# des patientes.

# Indiquer le poids moyen avant traitement en utilisant la fonction "mean()"


#____________________________________________________________________________

# Faites de même pour le poids après traitement :


#____________________________________________________________________________

# Appliquez la fonction summary() sur le jeu de données
# pour vérifier que vos moyennes sont bonnes :


#____________________________________________________________________________
# Les chiffres sous Treat indiquent le nombre de fois 


# Le poids en lbs ne nous indique pas grand chose. Convertissons-le en kg:
# 1 livre vaut 0.45359237 kg. 
# Il suffit de multiplier les variables Prewt et Postwt par 0.45359237.

Prewt <- Prewt*0.45359237
Postwt <- Postwt*0.45359237

# Observez les poids à présent:
head(anorexia)


# Observez les moyennes à l'aide de la fonction summary. Ces poids vous parlent-ils plus ?


# Une patiente a le plus petit poids de l'avant traitement: Min. : 31.75 kg
# Quel est le poids de la patiente la plus lourde avant traitement ?
# Qu'en est-il du poids minimum et maximum des groupes des patientes après traitement ?




# Créons une variable "Poidsdiff" qui va comprendre la différence de poids avant / après de chaque patiente:

# Je vais faire l'inverse : la somme des poids avant / après, ce qui n'a pas beaucoup de sens.
# Puis, je vais l'ajouter aux jeu de données en utilisant la fonction "cbind" (column bind = relier une colonne).
# Grâce au modèle ci-dessous, à vous de trouver comment
# créer une variable qui comprend la différence de poids !

PoidsAddition <- Postwt + Prewt
anorexia <- cbind(anorexia, PoidsAddition)
View(anorexia)

# A vous !

Poidsdiff <-
# etc...

  
# Quel est le changement de poids moyen ? (aide : moyenne de Poidsdiff)

  
# En moyenne les patientes prennent ?????? kg à la fin de l'expérience.  
#_________________________________________________________________________________




# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@ Régression linéaire @@@@@ @@@@@@@@@@@@@@@@@@@
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@


# Anorexia est utilisé comme exemple pour faire une régression linéaire dans l'aide de R.
# Une régression permet de mesurer l'effet d'une variable ou plusieurs variables sur une autre.
# Ex: Les patientes ont-elles pris du poids après le traitement ? (pour celles qui ont reçu un traitement)
# On dit qu'on teste l'effet de la variable Treat sur le poids des patientes.
# 

# A l'aide d'un graphique "boite à moustache",
# observons le poids moyen initial par groupe (sans traitement, traitement individuel et familial)

boxplot(Prewt~Treat, data=anorexia, col=c(4,2,3), main="Poids INITIAL par cohorte (groupe)")
# La boite indique que 50% des patientes ont un poids compris entre le bas et le haut de la boite.


# observons le poids moyen final par groupe (sans traitement, traitement individuel et familial)

boxplot(Postwt~Treat, data=anorexia, col=c(4,2,3), main="Poids FINAL par cohorte (groupe)")

############ BOXPLOT DEFINITION #############
# Le boxplot ou boîte à moustache a l'avantage d'aider à la comparaison de groupes par rapport
# à une variable numérique (ici, le poids).

# La boite indique que 50% des patientes ont un poids compris entre le bas et le haut de la boite.
# La barre noire indique la médiane des données.
# Les "moustaches" indiquent que 90% des données sont comprisent entre celle du bas et du haut.
# Les points sont des valeurs extrêmes, atypiques:
# Cf: image: http://4.bp.blogspot.com/-8D73Wz4iWRQ/ThL5tF0thAI/AAAAAAAAP18/ykE4aRBtSew/s1600/Boite+moustache+commentaires.png

# Quel groupe a pris le plus de poids après traitement ?
# Toujours dans les données après traitement, 
# dans quel groupe trouve-t-on le poids maximal et minimal de toutes les patientes ?


# Avant de faire une régression linéaire on doit d'abord indiquer ce que l'on compare.
# On compare le changement de poids par rapport aux groupe "contrôle" qui n'a reçu aucun traitement spécial.
# On dit que le groupe "Cont" est donc notre "modalité de référence" (English: reference level)

# modifions la variable Teat pour que sa modalité "Cont" devienne le repère par rapport aux
# groupes qui ont reçu un traitement :
anorexia$Treat <- relevel(anorexia$Treat, ref = "Cont")


# Créons notre modèle linéaire. Il s'agit de la même syntaxe de code que pour le 
# boxplot :

model1<- glm(Poidsdiff~Treat, data=anorexia)
summary(model1)

# Les résultats dans summary répondent aux questions suivantes :
# Par rapport au groupe contrôle, la différence de poids est-elle
# significative dans le groupe CBT ? Qu'en est-il du groupe FT ?

# Regardons les étoiles à partir de la ligne TreatCBT
# A la ligne CBT il y a 1 étoile ce qui indique qu'il y a une différence de poids significativement
# différente entre entre le groupe CBT et le groupe contrôle.

# Regardons les étoiles de la ligne TreatFT:
# il y a une différence de poids significativement
# différente entre entre le groupe FT et le groupe contrôle.

# Plus il y a d'étoiles plus la différence / l'effet est significatif. 
# Pour être significatif, il faut que dans la colonne Pr(>|t|), 
# le chiffre soit inférieur à 0.05 (c'est la p-valeur, English: p-value, un indicateur
# de significativité).

# Vérifiez que votre p-valeur est bien inférieure à 0.05. 
# Comparez les p-valeurs de CBT et FT :
# Entre 0.032827 et 0.000161, quel est le chiffre le plus petit ?
# A votre avis, quel groupe a une différence de poids plus grande par rapport au 
# groupe contrôle ?



#________________________________________________________________________
# Vérifions cela. Regardez maintenant la colonne "Estimate"
# La seconde ligne de la colonne Estimate indique la différence de kg moyen entre le 
# groupe contrôle et le groupe CBT. 
# Voici un modèle d'interprétatio: 
# En moyenne, les patientes ayant reçu le traitement CBT prennent 1.8kg 
# (environ 2kg) de plus que les patientes du groupe contrôle.

# A vous ! Utilisez le modèle pour interpréter le groupe FT:



#______________________________________________________________


# Faites une régression linéaire pour tester la différence de poids initial puis final 
# entre les groupes. Appelez-les model2 et model3. Interprétez les résultats. 

model2<- glm(???~Treat, data=anorexia)
summary(model2)


model3 <- 

  # @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  # @@@@@@@@@@@@@@@@@@@@@@@@@@@@@ QUIZ @@@@@@@@@@@@@@@@@@@@@@@@@@@@
  # @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  
# Comment active-t-on un package dans R ?
  
  
# Comment active-t-on des données déjà stockées dans R ? 

  
# Comment ajouter une colonne supplémentaire à un jeu de données ?

# Dans les données axorexia, comment trouver la différence de poids entre Prewt et Postwt?

# Sachant qu'on peut additioner et soustraire des variables, peut-onles multiplier ou les diviser ?
# Essayez avec Prewt et Postwt !

# Dans un boxplot, 50% des données sont dans.......? Les valeurs etrêmes se trouvent......?


# Que doit-on regarder dans les résultats donnés par summary(model1) 
# quand on débute en régression linéaire ?

# A quoi sert la modalité de référence ?

# Si la p valeur dans la colonne Pr(>|t|) est 0.08, l'effet est-il significatif ?
# A partir de quelle valeur de p a-t-on un effet significatif ?

# Rédiger un paragraphe qui interprete les résultats de la régression linéaire à partir
# des données "anorexia".
summary(model1)
# 
# Call:
#   glm(formula = Poidsdiff ~ Treat, data = anorexia)
# 
# Deviance Residuals: 
#   Min       1Q   Median       3Q      Max  
# -6.3757  -1.9592  -0.2477   2.4642   6.8843  
# 
# Coefficients:
#   Estimate Std. Error t value Pr(>|t|)    
# (Intercept)  20.0097     0.6163  32.467  < 2e-16 ***
#   TreatCBT      1.8486     0.8487   2.178 0.032827 *  
#   TreatFT       3.9137     0.9802   3.993 0.000161 ***


