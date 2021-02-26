import 'package:card_game_rules/models/categoris_model.dart';

class CardModel {
  String name;
  String id;
  String image;
  CategoriesModel categorie;

  CardModel({this.name, this.id, this.image, this.categorie});
}
