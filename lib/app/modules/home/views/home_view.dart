// ignore: import_of_legacy_library_into_null_safe
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:my_apps/app/modules/home/views/category_body.dart';
import 'package:my_apps/app/modules/home/views/header.dart';

// import '../../../../cust_icons.dart.dart';
import '../controllers/home_controller.dart';
import 'brand.dart';

class HomeView extends GetView<HomeController> {

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController(initialScrollOffset: 0);
    
    return GetBuilder<HomeController>(builder: (controller) {
      return AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.dark,
          child: Scaffold(
              body: SingleChildScrollView(
                controller: scrollController,
                scrollDirection: Axis.vertical,
                child: Column(
                  children:  [
                    Header(),
                    Divider(
                      height: 3,
                      thickness: 5,
                    ),
                    CategoryBody(),
                    Divider(
                      height: 3,
                      thickness: 5,
                    ),
                    Divider(
                      height: 3,
                      thickness: 5,
                    ),
                    Brand(),
                  ],
                ),
              ),
          ));
    });
  }
}
