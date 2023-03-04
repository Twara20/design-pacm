import 'package:design_pacm/controller/controller.dart';
import 'package:get/get.dart';

class SignInGuestBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<SignInGuestController>(SignInGuestController(),permanent: false);

  }

}