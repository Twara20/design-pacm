import 'package:design_pacm/routes.dart';
import 'package:design_pacm/screens/check_your_email_screen.dart';
import 'package:design_pacm/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  //await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.purple),
        scrollBehavior: ScrollBehavior(),
        initialRoute: LoginScreen.pageId,
        getPages: appPages,
        locale: Get.deviceLocale,
        fallbackLocale: Locale('en', 'US')
    );
  }
}
