import 'package:get/get.dart';

import '../controller/login_controller.dart';

class LoginBinding extends Bindings{
  @override
  void dependencies() {

    Get.put<LoginController>(LoginController(),permanent: false);
    // TODO: implement dependencies
  }

}