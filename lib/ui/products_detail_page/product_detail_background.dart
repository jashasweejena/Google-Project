import 'package:flutter/material.dart';

class ProductDetailBackground extends StatelessWidget {
  const ProductDetailBackground({Key key, this.screenHeight, this.screenWidth})
      : super(key: key);

  final double screenHeight, screenWidth;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          left: screenWidth * 0.3,
          bottom: screenHeight * 0.58,
          child: Container(
            height: screenWidth * 1.2, // Circle takes 120% of the screen width
            width: screenWidth * 1.2,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Color(0xFF0501FF)),
          ),
        ),
      ],
    );
  }
}
