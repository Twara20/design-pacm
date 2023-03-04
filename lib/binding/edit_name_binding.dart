import 'package:get/get.dart';
import '../controller/edit_name_controller.dart';

class EditNameScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<EditNameController>(EditNameController(),permanent: false);
  }

}