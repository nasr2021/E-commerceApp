import '../screen/login_page.dart';
import '/screen/product_details_page.dart';
import '/screen/register_page.dart';
import '/binding/root_binding.dart';
import '../binding/home_binding.dart';
import '../screen/root.dart';
import 'package:get/get.dart';

import '../screen/home_page.dart';

appRoutes() => [
      GetPage(
        name: '/root',
        page: () => Root(),
        binding: RootBinding(),
      ),
      GetPage(
        name: '/login',
        page: () => LoginPage(),
      ),
      GetPage(
        name: '/register',
        page: () => RegisterPage(),
      ),
      GetPage(
        name: '/home',
        page: () => HomePage(),
      ),
    ];

class MyMiddelware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    print(page?.name);
    return super.onPageCalled(page);
  }
}
