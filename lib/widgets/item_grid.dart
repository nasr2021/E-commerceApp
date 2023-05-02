import 'package:ecommerceapp/widgets/panier.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/cart_controller.dart';
import '../model/product_model.dart';
import 'cart_item.dart';
import 'custom_buttom.dart';
import 'custom_text.dart';

class ItemsGrid extends StatelessWidget {
  RxList<ProductModel> items;
  int price;
  ItemsGrid({required this.items, required this.price});
  final CartController cartController = Get.find<CartController>();
  @override
  Widget build(BuildContext context) {
    return Obx(() => SingleChildScrollView(
          child: Column(
            children: [
              // ListView.builder(
              //     shrinkWrap: true,
              //     itemCount: items.length,
              //     itemBuilder: (context, index) {
              //       return Card(
              //           color: Colors.blueGrey.shade200,
              //           elevation: 8.0,
              //           child: Padding(
              //               padding: const EdgeInsets.all(2.0),
              //               child: Column(
              //                 // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //                 // mainAxisSize: MainAxisSize.max,
              //                 children: items.map((ProductModel product) {
              //                   return CartItem(
              //                     product: product,
              //                   );
              //                 }).toList(),
              //               )));
              //     }),
              GridView.count(
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 1,
                shrinkWrap: true,
                childAspectRatio: .63,
                padding: const EdgeInsets.all(10),
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 10,
                children: items.map((ProductModel product) {
                  return CartItem(
                    product: product,
                  );
                }).toList(),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: CustomButton(
                  onPress: () {
                    cartController.checkout();
                  },
                  text: "paiement",
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: CustomText(
                  fontSize: 20,
                  text: "Total : \$${price}",
                ),
              ),
            ],
          ),
        ));
  }
}
