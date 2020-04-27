import 'package:flutter/material.dart';
import 'package:google_products/models/product.dart';

class TwoProductItemWidget extends StatelessWidget {
  final double screenHeight;
  final Product product1;
  final Product product2;

  @override
  Widget build(BuildContext context) {
    var item1 = Container(
      color: product1.backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            product1.imagePath,
            height: screenHeight * 0.15,
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            product1.name,
            style: TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.w600,
                color: Color(0xFF3B3B43)),
          ),
          Text(
            product1.description,
            style: TextStyle(fontSize: 7.0, color: Color(0xFF909090)),
          )
        ],
      ),
    );

    var item2 = Container(
      color: product2.backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            product2.imagePath,
            height: screenHeight * 0.15,
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(product2.name,
              style: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF3B3B43))),
          Text(product2.description,
              style: TextStyle(fontSize: 7.0, color: Color(0xFF909090)))
        ],
      ),
    );

    return Container(
      height: screenHeight * 0.25,
      child: Row(
        children: <Widget>[
          Expanded(
            child: item1,
          ),
          Expanded(
            child: item2,
          )
        ],
      ),
    );
  }

  TwoProductItemWidget({this.screenHeight, this.product1, this.product2});
}
