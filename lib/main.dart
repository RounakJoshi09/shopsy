import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopsy/providers/products.dart';
import 'package:shopsy/screens/product-detail.dart';
import 'package:shopsy/screens/product_overview_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Products(),
      child: MaterialApp(
        title: 'ShopSy',
        theme: ThemeData(
            primarySwatch: Colors.purple,
            accentColor: Colors.deepOrange,
            fontFamily: 'Lato'),
        home: Scaffold(
          body: ProductOverviewScreen(),
        ),
        routes: {
          ProductDetailScreen.routeName: ((context) => ProductDetailScreen()),
        },
      ),
    );
  }
}
