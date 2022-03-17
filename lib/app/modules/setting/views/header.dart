import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/setting_controller.dart';

class HeaderSettingView extends GetView<SettingController> {
  @override
  Widget build(BuildContext context) {
    return Stack(
        // appBar: AppBar(
        //   title: Text('SettingView'),
        //   centerTitle: true,
        // ),
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(bottom: 130),
              height: 80,
              decoration: BoxDecoration(color: Colors.blue,
              //  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40), )
               ),
            ),
          ),
          Center(
            child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.center, 
                  children: [
             Container(
               margin: EdgeInsets.only(top: 18),
                  padding: EdgeInsets.only(top: 130),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    border: Border.all(color: Color.fromARGB(255, 194, 191, 191), width: 6),
                    shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/images/profile.png'))),
                ),
              // Text(
              //   'SettingView is working',
              //   style: TextStyle(fontSize: 20),
              // ),
            ]),
          ),
        ]);
  }
}
