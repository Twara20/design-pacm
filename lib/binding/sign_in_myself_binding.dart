import 'package:design_pacm/controller/sign_in_myself_controller.dart';
import 'package:get/get.dart';

class SignInBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<SignInController>(SignInController(),permanent: false);
  }

}