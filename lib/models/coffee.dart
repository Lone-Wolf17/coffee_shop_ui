import 'package:flutter/cupertino.dart';

class Coffee {
  final int id;
  final String name;
  final String description;
  final double price;
  final ImageProvider image;

  Coffee(
      {@required this.name,
      @required this.description,
      @required this.id,
      @required this.price,
      @required this.image});
}
