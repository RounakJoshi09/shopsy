import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopsy/providers/products.dart';
import 'package:shopsy/widgets/product_item.dart';

class GridViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final products = productData.items;
    return GridView.builder(
      padding: EdgeInsets.all(5.0),
      itemCount: products.length,
      itemBuilder: (ctx, index) => ProductItem(
          products[index].id, products[index].title, products[index].imageUrl),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5),
    );
  }
}
