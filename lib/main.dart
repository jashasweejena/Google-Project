import 'package:flutter/material.dart';
import 'package:google_products/ui/products_detail_page/product_detail_page.dart';
import 'package:google_products/ui/products_listing_page/product_listing.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'OpenSans',
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.white
      ),
      home: ProductListingPage(),
    
    );
  }
}
