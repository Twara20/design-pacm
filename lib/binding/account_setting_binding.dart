import 'package:design_pacm/controller/account_setting_controller.dart';
import 'package:get/get.dart';

class AccountSettingBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<AccountSettingController>(AccountSettingController(),permanent: false);


    // TODO: implement dependencies
  }

}