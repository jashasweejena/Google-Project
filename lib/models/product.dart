import 'package:flutter/material.dart';

class Product {
  final String name, description, buttonText, imagePath, price, productInfo;
  final Color backgroundColor;

  Product({this.name,
    this.description,
    this.backgroundColor,
    this.buttonText,
    this.imagePath,
    this.price,
    this.productInfo});
}

  final Product pixelStand = Product(
      imagePath: "assets/images/pixelstand.webp",
      name: "Pixel Stand",
      description: "New Release",
      buttonText: "",
      productInfo: "Charge your Pixel wirelessly with Pixel Stand, and do more with your Google Assistant.1",
      price: '6,900',
      backgroundColor: Color(0xFFF9F9F9));

  final Product dayDreamView = Product(
    imagePath: "assets/images/daydream.png",
    name: "DayDream View",
    description: "Premium",
    buttonText: "",
    productInfo: "Enjoy VR with a soft, lightweight fabric headset that's easy-to-wear and an expressive controller that's simple to use.",
    price: '4,499',
    backgroundColor: Color(0xFFE0DDFF),
  );

  final Product pixel = Product(
      imagePath: "assets/images/pixel.png",
      name: "Pixel 3a",
      description: "Meet the new Google Pixel 3a.",
      buttonText: "Learn More",
      productInfo: "Introducing Pixel 3a. It has an extraordinary camera with features such as Night Sight, Super Res Zoom, Portrait Mode and HDR+.",
      price: "30,999",
      backgroundColor: Color(0xFFF5F5F5));

  final Product stadia = Product(
      imagePath: "assets/images/stadia.png",
      name: "Google\nStadia",
      description: "New Release",
      buttonText: "CHECK OUT",
      backgroundColor: Color(0xFFFBE9EB),
      price: "699",
      productInfo: "Stadia is Google's new cloud based gaming platform that allows you to play your favorite git video games across screens instantly.");

