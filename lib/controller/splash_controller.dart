import 'dart:async';
import 'package:design_pacm/controller/controller.dart';
import 'package:get/get.dart';
import 'controller.dart';
import '../screens/login_screen.dart';

class SplashController extends BaseController {
  @override
  void errorHandler(e) {

  }

  @override
  void oninit() {
    super.onInit();
    Timer(Duration(seconds: 2), goToLoginScreen);

  }

  void goToLoginScreen() async {
    return await loadingWrapper(() async {
      return Get.offAndToNamed(LoginScreen.pageId);
    });
  }
}


