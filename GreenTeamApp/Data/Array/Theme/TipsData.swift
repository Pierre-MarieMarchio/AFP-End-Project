//
//  TipsData.swift
//  GreenTeamApp Alpha 0.0.1
//
//  Created by Apprenant30 on 02/02/2023.
//

import Foundation
import SwiftUI


struct Tip : Identifiable {
    var id = UUID ()
    var tipTitle: String
    var tipTheme: String
    var tipTexte: String
    var tipColor: Color
    
}
var tips = [
    Tip (tipTitle: "Éteindre et débrancher", tipTheme: "Équipements", tipTexte: " Débranchons ordinateurs, écrans, imprimante et scanner ainsi que la box et tous types de périphériques. Ne pas laisser de matériel en veille ou en mode recharge, d'autant plus lors d'une absence prolongée. ", tipColor: CustomColor.paleYellow),
    
    Tip (tipTitle: "Recycler", tipTheme: "Équipements", tipTexte: " Actuellement, seuls 20% des déchets électroniques sont recyclés dans le monde. De plus, sur la soixantaine d’éléments chimiques présents, seule une dizaine sont recyclés (l’or, l’argent, le platine, le cobalt, l’étain, le cuivre, le fer, l’aluminium et le plomb).Recycler, c’est offrir une nouvelle vie à votre équipement, pensez à le donner : il fera un heureux et ne finira pas sa vie dans la décharge. L’inverse est vrai aussi, pensez à acheter votre matériel d’occasion ou reconditionné. ", tipColor: CustomColor.paleYellow),
    
    Tip (tipTitle: "Mises à jour", tipTheme: "Équipements", tipTexte: " Les mises à jour de vos téléphones et ordinateurs apportent toujours de nouvelles fonctionnalités pas très utiles. Votre système de départ devient obsolète et cela va vous contraindre de changer d’appareil car la dernière version du logiciel nécessite plus de ressources informatiques que la version initiale. Une solution peut-être de n’accepter que les mises à jour correctives !", tipColor: CustomColor.paleYellow),
    
    Tip (tipTitle: "Limiter", tipTheme: "Flux de données", tipTexte: " 55% de l’impact énergétique mondial du numérique provient du trafic de données, qui augmente actuellement de 25% par an. Limiter le streaming vidéo et/ou réduire la qualitéÉteindre les caméras lors des visioconférences. Installer un bloqueur de publicités et enfin, privilégiez les logiciels libres qui n’enverront pas de données à votre insu. ",tipColor: CustomColor.paleYellow),
    
    Tip (tipTitle: "Stocker", tipTheme: "Flux de données", tipTexte: " Stocker localement plutôt que sur un cloud et désactiver les transferts automatiques depuis votre téléphone vers les clouds.  ",tipColor: CustomColor.paleYellow),
    
    Tip (tipTitle: "Installer", tipTheme: "Flux de données", tipTexte: "Installer un bloqueur de publicités et privilégiez les logiciels libres qui n’enverront pas de données à votre insu. ",
         tipColor: CustomColor.paleYellow),
    
    Tip (tipTitle: "Optimiser", tipTheme: "Navigation Web", tipTexte: " Optimiser vos requêtes de recherche internet vous fera économiser de l'énergie et vous fera gagner du temps également !", tipColor: CustomColor.paleYellow),
    
    Tip (tipTitle: "Organiser ses fenêtres", tipTheme: "Navigation Web", tipTexte: " Éviter un nombre important de fenêtres et d'onglets ouverts et prenez l'habitude d'utiliser les marque-pages et l’historique", tipColor: CustomColor.paleYellow),
    
    Tip (tipTitle: "Alléger", tipTheme: "Courrier électronique", tipTexte: " Pour envoyer des fichiers lourds, utiliser des services qui utilisent des liens de téléchargement tels que WeTransfer, Google drive, Onedrive…",
        tipColor: CustomColor.paleYellow),
    
    Tip (tipTitle: "Réfléchir avant", tipTheme: "Courrier électronique", tipTexte: " Est-ce bien utile d'envoyer à votre collègue un Merci par email ? Réfléchissez sur l'utilité d'envoi d'emails, cela vous fera gagner du temps et..de l'argent et la planète vous dira Merci !",
        tipColor: CustomColor.paleYellow),
    
    Tip (tipTitle: "Trier", tipTheme: "Courrier électronique", tipTexte: " Trier vos emails pour ne garder que les nécessaires. 500 emails supprimés est équivalent à..sauver un arbre ! ",
        tipColor: CustomColor.paleYellow),
    
    Tip (tipTitle: "Économie de papier", tipTheme: "Impressions", tipTexte: " Vérifier la mise en page : diminuer les marges, le nombre de saut de page, diminuer la taille de la police, choisissez une police économique en encre : Garamond, Ecofont, ... Imprimer en mode recto-verso, plusieurs pages par feuille, en mode brouillon. Et si vous pouvez vous en passer, c'est encore mieux ! ", tipColor: CustomColor.paleYellow),
    
    Tip (tipTitle: "Limiter", tipTheme: "Impressions", tipTexte: "En limitant nos impressions, nous pouvons réduire les déchets de 6kg par personne et par an. Si c'est nécessaire, imprimez en noir et blanc, en brouillon, recto-verso et deux pages par feuille", tipColor: CustomColor.paleYellow),
    
   
    Tip (tipTitle: "Économie d'énergie", tipTheme: "Smartphone", tipTexte: " Le mode économie d'énergie peut être activé, cela augmentera l'autonomie de votre smartphone. Pensez également à utiliser la WIFI plutôt que la connexion mobile. N'oubliez pas aussi de fermer ou supprimer les applications inutilisées sur votre smartphone.", tipColor: CustomColor.paleYellow),
   
    Tip (tipTitle: "Durée de vie", tipTheme: "Smartphone", tipTexte: " Pour réduire les impacts de nos smartphones sur l'environnement, il faut allonger leur durée de vie, en s'en servant plus longtemps, en choisissant des smartphones réparables, qui peuvent être utilisés plusieurs années... On réduit ainsi le nombre de smartphones fabriqués et les impacts associés.", tipColor: CustomColor.paleYellow),
    
    /*tip pour test le code dans canvas
    
    Tip (tipTitle: "Astuce a la con3", tipTheme: "Theme Title", tipTexte: " hahah hzhzhzhzh hahahahah hahahahaha hahahahah ahahahahah ahahahaha ahahahaha ahahahaha hahahahaha hahahahah hahahahaha hahahahahaha hahahahahaha ahahahahahahah ahahahahahhahaha ahahahahhahaha jqbskd qjdqfj qjfhljhvjlchvqslvf <s;djhv<lsdjhv dvhsevbs<jhefg<sdljhgf< sdvhjsdvljhs<dvb<jds hjevgkjvkey fe;jhgbljhbgjs ejhgblzebg  hjgbqluesgb gejhgbezg ", tipColor: CustomColor.boldOrange),
    Tip (tipTitle: "Astuce a la con3", tipTheme: "Theme Title", tipTexte: " hahah hzhzhzhzh hahahahah hahahahaha hahahahah ahahahahah ahahahaha ahahahaha ahahahaha hahahahaha hahahahah hahahahaha hahahahahaha hahahahahaha ahahahahahahah ahahahahahhahaha ahahahahhahaha jqbskd qjdqfj qjfhljhvjlchvqslvf <s;djhv<lsdjhv dvhsevbs<jhefg<sdljhgf< sdvhjsdvljhs<dvb<jds hjevgkjvkey fe;jhgbljhbgjs ejhgblzebg  hjgbqluesgb gejhgbezg ", tipColor: CustomColor.paleYellow)*/
    
]
