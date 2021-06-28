import 'package:flutter/material.dart';
import 'package:gsg_activity1/data/proData.dart';
import 'package:gsg_activity1/models/Product.dart';

class ItemWidget extends StatelessWidget {
  Product product;
  Function updating;

  ItemWidget(this.product, this.updating);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.orangeAccent),
        child: ListTile(
          trailing: IconButton(
            onPressed: () {
              this.updating(product);
            },
            icon: Icon(Icons.favorite),
            color: product.isFavourite ? Colors.red : Colors.grey,
          ),
          title: Text(
            product.productName,
          ),
          subtitle: Text(product.productPrice),
        ));
  }
}
