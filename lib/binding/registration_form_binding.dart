import 'package:get/get.dart';

import '../controller/controller.dart';

class RegistrationFormBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<RegistrationFormController>(RegistrationFormController(),permanent: false);
    // TODO: implement dependencies
  }

}