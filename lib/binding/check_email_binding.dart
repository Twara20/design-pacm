import 'package:design_pacm/controller/check_email_controller.dart';
import 'package:get/get.dart';

class CheckEmailBinding extends Bindings{
  @override
  void dependencies() {

    Get.put<CheckEmailController>(CheckEmailController(),permanent: false);
  }

}