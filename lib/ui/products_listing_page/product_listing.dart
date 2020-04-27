import 'package:flutter/material.dart';
import 'package:google_products/models/product.dart';
import 'package:google_products/ui/products_listing_page/button.dart';
import 'package:google_products/ui/products_listing_page/right_image_product_item.dart';
import 'package:google_products/ui/products_listing_page/top_bar.dart';
import 'package:google_products/ui/products_listing_page/two_product_item.dart';

import 'left_image_product_item.dart';

class ProductListingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Find screen height and pass to RightImageProductItemWidget
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset("assets/images/google_logo.png")),
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset("assets/icons/menu.png")),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            TopBar(),
            RightImageProductItemWidget(
                screenHeight: screenHeight, product: pixel),
            LeftImageProductItemWidget(
                screenHeight: screenHeight, product: stadia),
           TwoProductItemWidget(
                screenHeight: screenHeight, product1: pixelStand, product2: dayDreamView),
            RedButton(text: "View All")
          ],
        ),
      ),
    );
  }
}
