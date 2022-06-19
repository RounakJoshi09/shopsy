import 'package:flutter/material.dart';
import 'package:shopsy/models/product_model.dart';
import 'package:shopsy/widgets/grid_view_widget.dart';
import 'package:shopsy/widgets/product_item.dart';

class ProductOverviewScreen extends StatelessWidget {
  List<Product> loadedProducts = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ShopSy")),
      body: GridViewWidget(),
    );
  }
}
