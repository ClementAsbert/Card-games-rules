import 'package:card_game_rules/models/Card_model.dart';

List<CardModel> cards = [
  CardModel(
    name: 'Bataille',
    categorie: '2 joueurs',
    id: 'id1',
    image: 'assets/images/playing-card-311679_640.png',
    rule:
        'Le donneur distribue l’intégralité des cartes, de sorte à ce que les deux joueurs aient le même nombre de cartes.\n Chaque joueur pose son paquet devant lui – faces cachées – et sans regarder ses cartes au préalable.\n Les deux joueurs posent alors simultanément leur première carte (celle du dessus) de leurs paquets respectifs. Ils comparent alors les valeurs des deux cartes posées (voir le décompte des cartes les plus puissantes en bas de cette page), et celui qui a la plus puissante remporte les 2 cartes posées. \n Si les deux joueurs posent la même carte (deux « 5 », deux « valets », ect.. indistinctement de la couleur), il y a « Bataille ». Les joueurs doivent alors mettre une carte face cachée (sans la regarder au passage) sur la carte initialement posée, puis la carte suivante de leur paquet face apparente. C’est la valeur de cette dernière carte apparente qui détermine qui emporte l’ensemble des cartes engagées dans la bataille (les deux cartes faces apparentes + la carte face cachée). Si le résultat de la bataille est encore une égalité (deux cartes de a même valeur), il faut alors répéter l’opération (reposer une carte face cachée et une nouvelle carte apparente) jusqu’à déterminer le gagnant de la manche. Une fois que son paquet est terminé, le joueur reprend les cartes qu’il a gagnées jusque là, les remet en tas – faces cachées – et la partie continue. Le jeu se termine lorsqu’un des joueurs a toutes les cartes du jeu.',
  ),
  CardModel(
    name: 'Président',
    categorie: '4 joueurs et +',
    id: 'id2',
    image: 'assets/images/playing-card-311679_640.png',
    rule:
        'Il existe de multiples variantes de ce jeu que cela soit au niveau des règles mêmes ou des nommages des joueurs. Voici celle que pratique l’équipe de règles du jeux.com. Tout d’abord, commençons par voir la hiérarchie des cartes. Au Trou du cul, la hiérarchie des cartes est un peu particulière puisque la carte la plus forte est le 2. Suit ensuit l’As, le Roi la Dame, le Valet, le 10 etc… Le 2 permet donc au joueur qu’il la possède d’avoir toujours le dernier mot lors d’une série. Lors de la première partie, l’un des joueurs distribue toutes les cartes aux participants. Le joueur situé à sa gauche commence la partie et pose de 1 à 4 cartes de même valeur. Le but étant de se débarrasser le premier de toutes ses cartes, il est bien entendu judicieux de jouer les petites cartes qui seront difficiles a placer lors d’une série (exemple le 3 qui ne peut que être joué par un joueur au commencement). Le joueur suivant a alors plusieurs possibilités : Il n’a pas de cartes plus hautes ou pas le nombre requis, il passe son tour Il a une ou des cartes supérieurs et pose par dessus celles précédemment jouées. Il a une ou des cartes de même valeur et les pose par dessus faisant ainsi sauté le tour du prochain joueur. Si une série s’arrête car plus aucun joueur ne souhaite poser une carte, le dernier à avoir joué recommence une nouvelle série. Remarques importantes : Les cartes posées doivent toujours être supérieures à celles déjà jouées. Lors d’une série, le jeu s’arrête lorsque plus aucun des participants ne peut ou ne veut jouer une carte supérieur. Ainsi, il n’est pas possible de faire une boucle comme par exemple As, 2 et repartir sur 3.',
  ),
  CardModel(
    name: 'Solitaire',
    categorie: '1 joueur',
    id: 'id3',
    image: 'assets/images/playing-card-311679_640.png',
    rule:
        'Le but du solitaire est de former 4 piles de cartes (chaque pile comprenant les cartes d’un même symbole) classées dans l’ordre croissant : As, 2, 3, 4, 5, 6, 7, 8, 9, 10, Valet, Dame, Roi. Ces 4 piles sont à réaliser à côté des 7 colonnes. Chaque pile doit commencer par un As. Pour commencer, essayez tout d’abord de placer les cartes visibles de chaque colonne dans les piles de symboles. Si cela n’est pas possible, vous pouvez déplacer les cartes visibles entre les colonnes afin de pouvoir retourner les cartes cachées du dessous. Pour cela, il vous suffit de créer des suites décroissantes en alternant la couleur rouge et la noire dans les différentes colonnes. Exemple : Vous avez dans la 3ème colonne un 10 de trèfle et dans la 4ème colonne, un valet de cœur. Vous pouvez mettre le 10 à la suite du valet et ainsi retourner la carte cachée de la 3ème colonne. Si vous avez réussi à déplacer la carte visible d’une colonne vous pouvez alors retourner la première carte cachée et la déplacer si vous en avez la possibilité. Quand toutes les possibilités ont été jouées, vous devez piocher une carte dans votre talon. Vous pouvez alors soit la mettre directement dans votre pile de symboles, soit la placer dans une des colonnes a la suite de la dernière carte visible. Si vous ne pouvez pas jouer cette carte, vous devez la glisser sous votre talon et en reprendre une nouvelle jusqu’à ce que vous puissiez en placer une.',
  ),
  CardModel(
    name: '?????',
    categorie: 'Ajouter récement',
    id: 'id4',
    image: 'assets/images/playing-card-311679_640.png',
    rule: '?????',
  ),
  CardModel(
    name: '?????',
    categorie: 'Les plus connues',
    id: 'id5',
    image: 'assets/images/playing-card-311679_640.png',
    rule: '?????',
  ),
  CardModel(
    name: '?????',
    categorie: 'Recomander',
    id: 'id6',
    image: 'assets/images/playing-card-311679_640.png',
    rule: '?????',
  ),
];
