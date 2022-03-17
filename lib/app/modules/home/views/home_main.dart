// ignore: import_of_legacy_library_into_null_safe
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:my_apps/app/modules/notifications/views/notifications_view.dart';
import 'package:my_apps/custom_icons_icons.dart';
import '../../setting/views/setting_view.dart';
import '../controllers/home_controller.dart';
import 'home_view.dart';

class HomeMain extends GetView<HomeController> {
  // GlobalKey bottomNavigationKey = GlobalKey();

  final List<Widget> _widgetList = <Widget>[
    HomeView(),
    HomeView(),
    NotificationsView(),
    SettingView(),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.dark,
          child: Scaffold(
            body: IndexedStack(
                index: controller.selectedNavbar, children: _widgetList),
            bottomNavigationBar: CurvedNavigationBar(
              // key: bottomNavigationKey,
              index: 0,
              height: 50.0,
              onTap: controller.changeSelectedNavBar,
              items:  const[
               Icon(
                  CustomIcons.shop_icon,
                  size: 30,
                  color: Colors.white,
                ),
                Icon(
                  Icons.inventory,
                  size: 30,
                  color: Colors.white,
                ),
                Icon(
                  CustomIcons.bell,
                  size: 30,
                  color: Colors.white,
                ),
                Icon(
                  Icons.account_circle_outlined,
                  size: 30,
                  color: Colors.white,
                ),
              ],
              color: Colors.blue,
              buttonBackgroundColor: Colors.blue,
              backgroundColor: Colors.transparent,
              animationCurve: Curves.easeInOut,
              animationDuration: const Duration(milliseconds: 300),
            ),
          ));
    });
  }
}
