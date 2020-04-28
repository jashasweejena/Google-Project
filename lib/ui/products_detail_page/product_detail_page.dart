import 'package:flutter/material.dart';
import 'package:google_products/models/product.dart';
import 'package:google_products/ui/products_detail_page/product_detail_background.dart';
import 'package:google_products/ui/products_detail_page/product_detail_content.dart';
import 'package:google_products/ui/products_detail_page/red_button_bottom.dart';

import 'bottom_buttons.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;

  const ProductDetailPage({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODONo Appbar so that the circle background isn't hidden.

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Container(
      child: Stack(
        children: <Widget>[
          ProductDetailBackground(
            // The blue circle in the background
            screenHeight: screenHeight,
            screenWidth: screenWidth,
          ),
          // The google Logo
          Padding(
            padding: EdgeInsets.only(bottom: screenWidth * 0.9),
            child: Align(
                alignment: Alignment.center,
                child: Image.asset("assets/images/google_text_logo.png",
                    color: Color(0xFFECECEC).withOpacity(0.5))),
          ),
          // Product logo and everything
          Padding(
            padding: EdgeInsets.only(
                top: screenHeight * 0.26, left: 30.0, right: 30.0),
            child: Container(
              child: Column(
                children: <Widget>[
                  ProductDetailContent(
                    product: product,
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: screenHeight * 0.13,
            child: BottomButton(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
            ),
          ),
          //The line
          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: screenWidth * 0.17,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                color: Color(0xff909090).withOpacity(0.6),
              ),
            ),
          ),
          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: screenWidth * 0.001,
            child: ButtomButtons(
              screenHeight: screenHeight,
              screenWidth: screenWidth,
            ),
          )
        ],
      ),
    ));
  }
}
