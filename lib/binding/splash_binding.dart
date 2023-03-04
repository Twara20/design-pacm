import 'package:get/get.dart';

import '../controller/splash_controller.dart';

class SplashBinding extends Bindings{
  @override
  void dependencies() {

    Get.put<SplashController>(SplashController(),permanent: false);
    // TODO: implement dependencies
  }

}