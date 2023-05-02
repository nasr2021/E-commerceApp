import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/cart_controller.dart';
import '../widgets/custom_text.dart';
import '../widgets/item_grid.dart';

class CartCheckoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartController>(
      init: CartController(),
      builder: (controller) => Obx(
        () => Scaffold(
            body: controller.items.length == 0
                ? const Padding(
                    padding: EdgeInsets.all(20),
                    child: Center(
                      child: CustomText(
                        text: "aucun produit",
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                : ItemsGrid(items: controller.items, price: controller.price)),
      ),
    );
  }
}
