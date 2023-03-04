import 'package:design_pacm/controller/controller.dart';
import 'package:get/get.dart';

class RegisterBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<RegisterController>(RegisterController(),permanent: false);
    // TODO: implement dependencies
  }

}