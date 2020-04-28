import 'package:flutter/material.dart';
import 'package:google_products/ui/products_detail_page/product_detail_page.dart';

import '../../models/product.dart';

class BlueButton extends StatelessWidget {
  final Product product;

  const BlueButton({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetailPage(product: product,)));
      },
      child: Text(
        product.buttonText,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w600, fontSize: 10.0),
      ),
      color: Color(0xFF0000FF),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
    );
  }
}

class RedButton extends StatelessWidget {
  final String text;

  const RedButton({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: EdgeInsets.symmetric(horizontal: 100.0),
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w600, fontSize: 10.0),
      ),
      color: Color(0xFFFF0000),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.0))),
    );
  }
}
