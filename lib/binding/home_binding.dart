import '../screen/main_screen.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ControlViewModel>(ControlViewModel(), permanent: true);
  }
}
