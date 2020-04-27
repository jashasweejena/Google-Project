import 'package:flutter/material.dart';
import 'package:google_products/models/product.dart';
import 'package:google_products/ui/products_listing_page/button.dart';

class LeftImageProductItemWidget extends StatelessWidget {
  final double screenHeight;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 32.0),
      height: screenHeight * 0.25,
      color: product.backgroundColor,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Image.asset(product.imagePath),
          ),
          Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      product.name,
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      product.description,
                      style: TextStyle(
                        fontSize: 8.0,
                        color: Color(0xFFDA1D21)
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    BlueButton(product: product,)
                  ],
                ),
              ))
        ],
      ),
    );
  }

  LeftImageProductItemWidget({this.screenHeight, this.product});
}
