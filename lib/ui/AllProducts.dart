import 'package:flutter/material.dart';
import 'package:gsg_activity1/data/proData.dart';
import 'package:gsg_activity1/models/Product.dart';
import 'package:gsg_activity1/ui/widgets/itemWidget.dart';

class AllProductsPage extends StatelessWidget {
  Function updating;
  AllProductsPage(this.updating);
  @override
  Widget build(BuildContext context) {
    return ProDat.products == null
        ? Center(
            child: CircularProgressIndicator(),
          )
        : ListView.builder(
            itemCount: ProDat.products.length,
            itemBuilder: (context, index) {
              return ItemWidget(ProDat.products[index], updating);
            });
  }
}
