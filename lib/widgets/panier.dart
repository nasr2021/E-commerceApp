import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/cart_controller.dart';
import '../model/product_model.dart';

import '../screen/register_page.dart';
import 'custom_text.dart';

class PainItem extends StatelessWidget {
  final ProductModel product;

  const PainItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(.5),
                offset: Offset(3, 2),
                blurRadius: 7,
              )
            ]),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    product.thumbnail,
                  )),
            ),
            CustomText(
              text: product.title,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            CustomText(
              text: product.category,
              color: Colors.grey,
            ),
            SizedBox(
              height: 5,
            ),
            TextButton(
              onPressed: () {
                //  CartController.cart.addItem(product);
              },
              child: Text(
                "+",
                style: TextStyle(
                  // color: Color.red,
                  fontSize: 14,
                ),
              ),
            ),
            CustomText(
              text: "1",
              color: Colors.grey,
            ),
            TextButton(
              onPressed: () {
                // CartController.cart.removeItem(product);
              },
              child: Text(
                "-",
                style: TextStyle(
                  // color: Color.red,
                  fontSize: 14,
                ),
              ),
            ),
            Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "\$${product.price}",
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  width: 30,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  final ProductModel product;

  const ProductBox({required this.product});

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 110,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.network(product.thumbnail),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(product.title,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(product.category),
                    Text("Price: " + "\$${product.price}"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
