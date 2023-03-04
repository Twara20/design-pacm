import 'package:get/get.dart';

import '../controller/create_new_password_controller.dart';

class CreateNewPassowordBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<CreateNewPasswordController>(CreateNewPasswordController(),permanent: false);

  }




}