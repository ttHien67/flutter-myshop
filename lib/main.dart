// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'ui/products/products_manager.dart';
import 'ui/products/product_detail_sreen.dart';
import 'ui/products/product_overview_sreen.dart';
import 'ui/products/user_product_screen.dart';
import 'ui/cart/cart_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My Shop',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Lato',
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors. purple,
          ).copyWith(
            secondary: Colors.deepOrange,
          ),
        ),
        home: const SafeArea(
          child: CartScreen(),
        ));
  }
}
