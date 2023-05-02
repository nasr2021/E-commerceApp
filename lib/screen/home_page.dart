import 'package:carousel_pro/carousel_pro.dart';

import '../controller/Auth_controller.dart';
import '../controller/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/products_grid.dart';
import '../controller/product_controller.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductController>(
      init: ProductController(),
      builder: (controller) => Obx(
        () {
          if (controller.loading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ProductsGrid(
              products: controller.products,
            );
          }
        },
      ),
    );
  }
}
