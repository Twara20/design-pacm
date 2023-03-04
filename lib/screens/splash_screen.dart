
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/splash_controller.dart';

class SplashScreen extends GetView<SplashController> {
  static const PageId = '/SplashScreen';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset("assets/images/splash_logo.png")),
          SizedBox(height: 15,),
          Text("Site Sign in App",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
        ],
      ),
    );

    // TODO: implement build
    throw UnimplementedError();
  }
}
