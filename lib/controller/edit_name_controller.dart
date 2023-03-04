import 'package:design_pacm/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditNameController extends BaseController{

  Rx<TextEditingController> firstNameController = TextEditingController().obs;
  Rx<TextEditingController> lastNameController = TextEditingController().obs;
  @override
  void errorHandler(e) {
    // TODO: implement errorHandler
  }

}