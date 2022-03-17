import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/splashscreen_controller.dart';

class SplashscreenView extends GetView<SplashscreenController> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
            backgroundColor: Colors.white,
            body: 
            Center(child: Container(
              height: double.maxFinite,
              width: double.maxFinite,
              decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.purple,
                Colors.white,
              ],
            )
              ),
              // width: Get.width * 0.5,
              // height: Get.height * 0.5,
              child: Lottie.asset('assets/logo/splash_logo.json', fit: BoxFit.contain,
              width: 400,
              height: 600,),
            ),)
            // const Center(
            //   child: Text('Mohon tunggu', style: TextStyle(fontFamily: 'Muli', fontSize: 25, color: Colors.white), ),
            // ),
      ),
     
    );
  }
}
