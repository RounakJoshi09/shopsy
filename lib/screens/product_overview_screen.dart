import 'package:flutter/material.dart';

class ProductOverviewScreen extends StatelessWidget {
  const ProductOverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ShopSy")),
      body: Center(
        child: Text("Product Overview"),
      ),
    );
  }
}
