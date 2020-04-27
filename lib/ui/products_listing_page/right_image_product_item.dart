import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_products/models/product.dart';
import 'package:google_products/ui/products_listing_page/button.dart';

class RightImageProductItemWidget extends StatelessWidget {
  final double screenHeight;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 32.0),
      height: screenHeight * 0.3, //30% of screen height
      color: product.backgroundColor,
      child: Row(
        children: <Widget>[
          Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(product.description,
                      style: TextStyle(
                          fontSize: 17.0, fontWeight: FontWeight.w900)),
                  SizedBox(
                    height: 10.0,
                  ),
                  BlueButton(
                    product: product,
                  )
                ],
              )),
          Expanded(
            flex: 5,
            child: Stack(
              children: <Widget>[
                //TODO Understand Positioned
                Positioned(
                  top: 0.0,
                  bottom: -50,
                  child: Transform.rotate(
                    child: Image.asset(product.imagePath),
                    angle: -0.2,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  RightImageProductItemWidget({this.screenHeight, this.product});
}
