import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/product_model.dart';

import 'custom_text.dart';

class CartItem extends StatelessWidget {
  final ProductModel product;

  const CartItem({required this.product});

  @override
  Widget build(BuildContext context) {
    int _counter = 1;

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
              padding: const EdgeInsets.all(1.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    product.thumbnail,
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          _counter++;
                        },
                        child: Text(
                          "+",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                      CustomText(
                        text: '$_counter',
                        color: Colors.grey,
                      ),
                      TextButton(
                        onPressed: () {
                          _counter--;
                        },
                        child: Text(
                          "-",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "\$${product.price}",
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
