import 'package:flutter/material.dart';

class Doctor with ChangeNotifier {
  final String id;
  final String name;
  final String work;
  final String image;
  final String description;
  final double price;
  bool isFavorite;

  Doctor({
    @required this.id,
    @required this.name,
    @required this.work,
    @required this.description,
    @required this.price,
    this.image,
    this.isFavorite = false,
  });

  void toggleFavoriteState() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
