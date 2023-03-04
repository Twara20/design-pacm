import 'package:design_pacm/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_ticket_provider_mixin.dart';

class SignInController extends BaseController with GetSingleTickerProviderStateMixin{

  late TabController tabController =
  TabController(length: 2, initialIndex: 0, vsync: this);
  @override
  void errorHandler(e) {


    Rx<TextEditingController> selectProjectController = TextEditingController().obs;
    Rx<TextEditingController> selectTimeController = TextEditingController().obs;
  }

}