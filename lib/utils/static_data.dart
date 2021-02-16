import 'package:coffee_shop_ui/models/category.dart';
import 'package:coffee_shop_ui/models/coffee.dart';
import 'package:flutter/material.dart';

class StaticData {
  static const String coffeeImgPath = "assets/images/coffee.png";
  static const String coffee2ImgPath = "assets/images/coffee2.png";
  static const String coffeeCupImgPath = "assets/images/coffee_cup.png";
  static const String drumImgPath = "assets/images/drum.png";
  static const  String product1ImgPath = "assets/images/product1.png";
  static const  String product2ImgPath = "assets/images/product2.png";
  static const  String shoppingBagImgPath = "assets/images/shopping_bag.png";
  static const  String squareImgPath = "assets/images/square.png";


  static final List<Category> categories = [
    Category(
      id: 1,
      name: "Espresso",
    ),
    Category(
      id: 2,
      name: "Black Coffee",
    ),
    Category(
      id: 3,
      name: "Coffee with Milk",
    ),
  ];

  static final List<Coffee> coffees = [
    Coffee(
      id: 1,
      name: "Coffee With Cream",
      description: "Extremely Hot",
      price: 80.00,
      image: AssetImage(
        "assets/images/product1.png",
      ),
    ),
    Coffee(
      id: 2,
      name: "Cold Coffee",
      description: "Iced and chilled coffee",
      price: 50.00,
      image: AssetImage(
        "assets/images/product2.png",
      ),
    ),

    // Duplications for more data

    Coffee(
      id: 3,
      name: "Coffee With Cream",
      description: "Extremely Hot",
      price: 80.00,
      image: AssetImage(
        "assets/images/product1.png",
      ),
    ),
    Coffee(
      id: 4,
      name: "Cold Coffee",
      description: "Iced and chilled coffee",
      price: 50.00,
      image: AssetImage(
        "assets/images/product2.png",
      ),
    ),
    Coffee(
      id: 5,
      name: "Coffee With Cream",
      description: "Extremely Hot",
      price: 80.00,
      image: AssetImage(
        "assets/images/product1.png",
      ),
    ),
    Coffee(
      id: 6,
      name: "Cold Coffee",
      description: "Iced and chilled coffee",
      price: 50.00,
      image: AssetImage(
        "assets/images/product2.png",
      ),
    ),
  ];
}