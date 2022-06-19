import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopsy/providers/products.dart';

class ProductDetailScreen extends StatelessWidget {
  @override
  static const routeName = '/product-detail';

  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments as String;
    final loadedProduct = Provider.of<Products>(context).findById(id);
    return Scaffold(
        appBar: AppBar(
      title: Text(loadedProduct.title),
    ));
  }
}
