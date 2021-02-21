import 'package:equatable/equatable.dart';

class Ingredient extends Equatable {
  int id;
  int recipeId;
  final String name;
  final double weight;

  Ingredient({this.id, this.recipeId, this.name, this.weight});

  @override
  List<Object> get props => [recipeId, name, weight];

  // Create a Ingredient from JSON data
  factory Ingredient.fromJson(Map<String, dynamic> json) => Ingredient(
    id: json['_id'],
    recipeId: json['recipeId'],
    name: json['name'],
    weight: json['weight'],
  );

  // Convert our Ingredient to JSON to make it easier when we store it
  Map<String, dynamic> toJson() => {
    '_id': id,
    'recipeId': recipeId,
    'name': name,
    'weight': weight,
  };
}
