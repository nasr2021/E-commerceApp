import '../controller/cart_controller.dart';
import '../model/product_model.dart';
import '../screen/main_screen.dart';
import '../widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/custom_buttom.dart';

const primaryColor = Color.fromARGB(255, 65, 88, 183);

class ProductDetailsPage extends StatelessWidget {
  ProductModel product;
  ProductDetailsPage({required this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.purple,
          elevation: 0.0,
          title: Text("details"),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xfff9f9f9),
            ),
            onPressed: () {
              Get.offAll(MainScreen());
            },
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Card(
                shadowColor: Colors.black,
                elevation: 6,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(2),
                  child: Image.network(
                    product.thumbnail,
                  ),
                ),
              ),
              CustomText(
                fontSize: 20,
                text: product.title,
                fontWeight: FontWeight.w500,
                height: 4,
              ),
              CustomText(
                fontSize: 16,
                text: "\$${product.price}",
                fontWeight: FontWeight.w500,
                height: 2,
              ),
              CustomText(
                fontSize: 16,
                text: product.description,
                fontWeight: FontWeight.w500,
                height: 2,
              ),
              SizedBox(height: 20),
              // Container(
              //   padding: EdgeInsets.all(20),
              //   width: 180,
              //   height: 100,
              //   child: CustomButton(
              //     onPress: () {},
              //     text: 'Add',
              //   ),
              // ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // backgroundColor: Colors.black,
                  enableFeedback: true,
                  minimumSize: Size(100, 45), primary: Colors.purple,
                ),
                onPressed: () {
                  CartController.cart.addItem(product);
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.shopping_cart_checkout),
                    Text("Ajouter"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
