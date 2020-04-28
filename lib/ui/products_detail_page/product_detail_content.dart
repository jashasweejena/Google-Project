import 'package:flutter/material.dart';
import 'package:google_products/models/product.dart';

class ProductDetailContent extends StatelessWidget {
  final Product product;
  final double screenHeight;
  final double screenWidth;
  const ProductDetailContent(
      {Key key, this.product, this.screenHeight, this.screenWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          // Product Image
          Image.asset(
            product.imagePath,
            height: screenHeight * 0.3,
          ),
          Container(
            child: Row(
              children: <Widget>[
                Text(
                  "Starting*",
                  style: TextStyle(
                      fontSize: screenHeight / 50,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFFBDBDBD).withOpacity(1)),
                ),
                Spacer(),
                Text(
                  '₹',
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF0000FF),
                      fontSize: screenHeight / 60),
                ),
                Text(
                  '${product.price}',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Color(0xFF0000FF),
                      fontSize: screenHeight / 40),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Row(
            children: <Widget>[
              Text(
                "Google Stadia",
                style: TextStyle(
                    fontSize: screenHeight / 30, fontWeight: FontWeight.w700),
              ),
              SizedBox(width: 30),
              Container(
                  height: screenWidth / 15,
                  child: Image.asset(
                    "assets/images/stadia_logo.png",
                  )),
            ],
          ),
          SizedBox(height: 10),
          Text(
            product.productInfo,
            style: TextStyle(
                color: Color(0xFF909090).withOpacity(1),
                fontWeight: FontWeight.w500,
                fontSize: (screenHeight / 30) * 0.7),
          ),
        ],
      ),
    );
  }
}
