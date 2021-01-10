import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Peace Lily",
      price: 34,
      size: 12,
      description: dummyText,
      image: "images/1.png",
      color: Colors.white),
  Product(
      id: 2,
      title: "English Ivy",
      price: 24,
      size: 8,
      description: dummyText,
      image: "images/2.png",
      color: Colors.white),
  Product(
      id: 3,
      title: "Parlor Palm",
      price: 23,
      size: 10,
      description: dummyText,
      image: "images/3.png",
      color: Colors.white),
  Product(
      id: 4,
      title: "Snake Plant",
      price: 44,
      size: 11,
      description: dummyText,
      image: "images/5.jpg",
      color: Colors.white),
  Product(
      id: 5,
      title: "Gerber Daisy.",
      price: 264,
      size: 12,
      description: dummyText,
      image: "images/6.jpeg",
      color: Colors.white),
  Product(
    id: 6,
    title: "African Violet",
    price: 274,
    size: 12,
    description: dummyText,
    image: "images/7.jpg",
  color: Colors.white),

];

String dummyText =
    "A flowerpot, flower pot, planter, planterette, or alternatively plant pot is a container in which flowers and other plants are cultivated and displayed.";
