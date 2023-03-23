import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, images;
  final double rating, price;

  Product({
    required this.id,
    required this.images,
    this.rating = 0.0,
    required this.title,
    required this.price,
  });
}


List<Product> foodProduct = [
  Product(
  id: 1, 
  images: 'assets/food/1.png', 
  title: "Burger", 
  price: 6500,
  rating: 4.8),

Product(
  id: 2, 
  images: 'assets/food/2.png', 
  title: "chicken", 
  price: 10000,
  rating: 4.2),


Product(
  id: 3, 
  images: 'assets/food/1.jpg', 
  title: "Sea Food", 
  price: 26000,
  rating: 4.1),
  Product(
  id: 4, 
  images: 'assets/food/3.png', 
  title: "Fish", 
  price: 15000,
  rating: 4.0),
  Product(
  id: 5, 
  images: 'assets/food/5.png', 
  title: "Soup", 
  price: 4500,
  rating: 4.3),

Product(
  id: 6, 
  images: 'assets/food/4.png', 
  title: "Light Food", 
  price: 7500,
  
  rating: 4.5),

];
const String decoration =
"Lorem Input is simply dummy Text of thr printing and typesetting industry.Lorem Ipsum has been the industry's standard dummy";