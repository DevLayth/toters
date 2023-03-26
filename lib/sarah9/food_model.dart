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
    image: 'assets/food/burger-iStock-1254672762-1-scaled.jpg',
    title: "Burger",
    price: 7500,
    description: description,
    rating: 4.8,
  ),
Product(
    id: 3,
    image: "assets/food/scale.jpg",
    title: "Sea Food",
    price: 25000,
    description: description,
    rating: 4.0,
  ),
  Product(
    id: 2,
    image: "assets/food/wp8620067.jpg",
    title: "pizza",
    price: 12000,
    description: description,
    rating: 4.1,
  ),
  
  Product(
    id: 4,
    image: "assets/food/Rosemary-Salmon-56a47ebf3df78cf77282b4a1.jpg",
    title: "Fish",
    price: 2300,
    description: description,
    rating: 4.4,
  ),
  Product(
    id: 5,
    image: "assets/food/op.jpg",
    title: "Kbab",
    price: 33000,
    description: description,
    rating: 4.2,
  ), 
  Product(
    id: 6,
    image: "assets/food/kk.jpg",
    title: "Light Food",
    price: 7000,
    description: description,
    rating: 4.5,
  ),

Product(
    id: 6,
    image: "assets/food/ch.jpg",
    title:"chickens",
    price: 14000,
    description: description,
    rating: 5.1,
  ),
];

const String description =
"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy";