import 'package:design_pacm/controller/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:design_pacm/screens/registration_form_screen.dart';

class RegistrationFormController extends BaseController{

  Rx<TextEditingController> firstNameController = TextEditingController().obs;
  Rx<TextEditingController> lastNameController = TextEditingController().obs;
  Rx<TextEditingController> companyNameController = TextEditingController().obs;
  Rx<TextEditingController> positionNameController = TextEditingController().obs;
  Rx<TextEditingController> phoneNoController = TextEditingController().obs;
  Rx<TextEditingController> emailController = TextEditingController().obs;
  Rx<TextEditingController> pacmController = TextEditingController().obs;
  @override
  void errorHandler(e) {
    // TODO: implement errorHandler
  }

}