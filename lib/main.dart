import 'package:flutter/material.dart';
import 'package:gsg_activity1/data/proData.dart';
import 'package:gsg_activity1/models/Product.dart';
import 'package:gsg_activity1/ui/AllProducts.dart';
import 'package:gsg_activity1/ui/FavProduct.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  updateTask(Product product) {
    product.isFavourite = !product.isFavourite;
    int index = ProDat.products.indexOf(product);
    ProDat.products[index] = product;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Products'),
            backgroundColor: Colors.grey,
            bottom: TabBar(tabs: [
              Tab(
                child: Text('All Products'),
              ),
              Tab(
                child: Text('Favourite Products'),
              ),
            ]),
          ),
          body: TabBarView(children: [
            AllProductsPage(updateTask),
            FavProducts(updateTask),
          ]),
        ));
  }
}
