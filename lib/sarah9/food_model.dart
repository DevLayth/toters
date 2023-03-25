import 'package:flutter/material.dart';


class Product {
  final int id, price;
  final String title, description, image;
  final double rating;

  Product({
    required this.id,
    required this.image,
    this.rating = 0.0,
    required this.title,
    required this.price,
    required this.description,
  });
}

// Our food Products

List<Product> foodProducts = [
  Product(
    id: 0,
    image: "assets/food2/burger.png",
    title: "Burger",
    price: 7500,
    description: description,
    rating: 4.8,
  ),
  
  Product(
    id: 3,
    image: "assets/food2/sae_food.png",
    title: "Sea Food",
    price: 25000,
    description: description,
    rating: 4.0,
  ),
  Product(
    id: 4,
    image: "assets/food2/fish.png",
    title: "Fish",
    price: 23000,
    description: description,
    rating: 4.4,
  ),
  Product(
    id: 5,
    image: "assets/food2/soup.png",
    title: "Soup",
    price: 3000,
    description: description,
    rating: 4.2,
  ), 
  Product(
    id: 6,
    image: "assets/food2/light_food.png",
    title: "Light Food",
    price: 7000,
    description: description,
    rating: 4.5,
  ),

Product(
    id: 6,
    image: "assets/food2/chicken.png",
    title:"chickens",
    price: 14000,
    description: description,
    rating: 5.1,
  ),
  Product(
    id: 2,
    image: "assets/food2/wp8620067.jpg",
    title: "pizza",
    price: 12000,
    description: description,
    rating: 4.1,
  ),
];

const String description =
"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy";