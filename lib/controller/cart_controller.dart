import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../model/product_model.dart';

class CartController extends GetxController {
  static CartController cart = Get.find();
  RxList<ProductModel> items = RxList<ProductModel>();
  RxInt totalPrice = 0.obs;
  final RxBool isLoading = false.obs;

  get getItems => items;

  get loading => isLoading.value;

  get price => totalPrice.value;

  @override
  void onInit() async {
    super.onInit();
  }

  addItem(ProductModel item) {
    items.add(item);
    totalPrice.value = totalPrice.value + item.price;
    print(totalPrice.value);
  }

  removeItem(ProductModel item) {
    items.removeWhere((element) => element.id == item.id);
    totalPrice.update((val) {
      val = val! - item.price;
    });
  }

  checkout() {
    items.clear();
    totalPrice.value = 0;
    Get.snackbar(
      "Success",
      "Successfully checked out the cart",
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
