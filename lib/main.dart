import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:get/get.dart';
import '../screen/login_page.dart';
import '../screen/product_details_page.dart';
import '../screen/register_page.dart';
import '../binding/root_binding.dart';
import '../binding/home_binding.dart';
import '../screen/root.dart';
import 'package:get/get.dart';

import '../screen/home_page.dart';
import 'app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    // options: DefaultFirebaseOptions.currentPlatform,
    // );
    options: FirebaseOptions(
      apiKey: "AIzaSyC9cPpqiDwTBT6DoAq8IJF6AfgelUd-Arg",
      appId: "1:408232035502:android:2c4f18f0f3ea9b9668d93f",
      messagingSenderId: "XXX",
      projectId: "e-commerc-bfc86",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: appRoutes(),
      initialRoute: '/root',
      title: 'Ecommerce app',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
    );
  }
}
