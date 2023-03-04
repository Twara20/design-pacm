import 'package:design_pacm/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_ticket_provider_mixin.dart';

class SignInGuestController extends BaseController with GetSingleTickerProviderStateMixin{

  late TabController tabController =
  TabController(length: 2, vsync: this, initialIndex: 0);


  Rx<TextEditingController> firstNameController = TextEditingController().obs;
  Rx<TextEditingController> lastNameController = TextEditingController().obs;
  Rx<TextEditingController> companyNameController = TextEditingController().obs;

  @override
  void errorHandler(e) {


  }


}