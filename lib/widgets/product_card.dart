import 'package:flutter/cupertino.dart';

import '../screen/product_details_page.dart';
import '../widgets/custom_text.dart';
import '../model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screen/home_page.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;

  const ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: InkWell(
        onTap: () {
          Get.to(
            () => ProductDetailsPage(
              product: product,
            ),
          );
        },
        splashColor: Colors.grey, // Splash color

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
                color: Color(0xffbf00e5),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
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
      ),
    );
  }
}
