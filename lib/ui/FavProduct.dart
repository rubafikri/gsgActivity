import 'package:flutter/material.dart';
import 'package:gsg_activity1/data/proData.dart';
import 'package:gsg_activity1/models/Product.dart';
import 'package:gsg_activity1/ui/widgets/itemWidget.dart';

class FavProducts extends StatelessWidget {
  Function updating;

  FavProducts(this.updating);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount:
            ProDat.products.where((element) => element.isFavourite).length,
        itemBuilder: (context, index) {
          return ItemWidget(
              ProDat.products
                  .where((element) => element.isFavourite)
                  .toList()[index],
              updating);
        });
  }
}
