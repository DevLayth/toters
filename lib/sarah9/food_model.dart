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
    image: 'assets/food/1.jpg',
    title: "Burger",
    price: 6400,
    description: description,
    rating: 4.8,
  ),
  Product(
    id: 2,
    image: "assets/food/wp8620067.jpg",
    title: "pizza",
    price: 5000,
    description: description,
    rating: 4.1,
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
    id: 4,
    image: "assets/food/Rosemary-Salmon-56a47ebf3df78cf77282b4a1.jpg",
    title: "Fish",
    price: 2300,
    description: description,
    rating: 3.1,
  ),
  Product(
    id: 5,
    image: "assets/istockphoto-1349381997-612x612.jpg",
    title: "Soup",
    price: 4000,
    description: description,
    rating: 4.2,
  ), 
  Product(
    id: 6,
    image: "assets/food/s1.jpg",
    title: "Light Food",
    price: 20,
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