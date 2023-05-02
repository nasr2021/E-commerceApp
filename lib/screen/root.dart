import '../controller/Auth_controller.dart';
import '../screen/home_page.dart';
import '../screen/login_page.dart';
import '../screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Root extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (GetBuilder<AuthViewModel>(
      builder: (controller) =>
          controller.user?.uid == null ? LoginPage() : MainScreen(),
    ));
  }
}
