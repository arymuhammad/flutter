// @dart=2.9
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:my_apps/app/modules/splashscreen/views/splashscreen_view.dart';

import 'app/routes/app_pages.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

void main() {
  runApp(const MyApp());
  if (
      !kIsWeb &&
      Platform.isAndroid) {
    //  The following two lines   Settings android The status bar is transparent immersion. Written after the component is rendered, in order to perform after rendering set Assign values, override the status bar, and write before rendering MaterialApp Component overrides this value.
    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(const Duration(seconds: 1)),
        builder: (context, snapshot) {
          // if (snapshot.connectionState == ConnectionState.waiting) {
          //   return SplashscreenView();
          // } else {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(fontFamily: 'Muli'),
            title: "Toko Online",
            initialRoute: AppPages.INITIAL,
            getPages: AppPages.routes,
          );
          // }
        });
  }
}
