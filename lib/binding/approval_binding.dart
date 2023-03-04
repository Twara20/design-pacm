import 'package:design_pacm/controller/controller.dart';
import 'package:get/get.dart';

class ApprovalBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<ApprovalController>(ApprovalController(),permanent: false);
    // TODO: implement dependencies
  }

}