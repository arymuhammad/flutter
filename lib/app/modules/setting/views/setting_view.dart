import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_apps/app/modules/setting/views/header.dart';
import 'package:my_apps/app/modules/setting/views/setting_account.dart';
import 'package:my_apps/cust_icons.dart.dart';
import 'package:my_apps/custom_icons_icons.dart';

import '../controllers/setting_controller.dart';

class SettingView extends GetView<SettingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Akun'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            HeaderSettingView(),
            Divider(),
            ListTile(
              onTap: (){},
              leading: Icon(Icons.list_alt, color: Colors.blueAccent),
              title: Text('Pesanan Saya'),
              trailing: Text('Lihat Riwayat'),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(CustomIcons.account_balance_wallet, color: Colors.red,),
                      Center(
                        child: Text(
                          "Belum Dibayar",
                          style: TextStyle(fontSize: 15.0),
                        ),
                      )
                    ],
                  ),
                Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(CustomIcons.parcel, color: Colors.blue,),
                      Center(
                        child: Text(
                          "Dikemas",
                          style: TextStyle(fontSize: 15.0),
                        ),
                      )
                    ],
                  ),
                Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(CustomIcons.shipping_fast, color: Colors.green,),
                      Center(
                        child: Text(
                          "Dikirim",
                          style: TextStyle(fontSize: 15.0),
                        ),
                      )
                    ],
                  ),
              ],
            ),
            Divider(),
            ListTile(
              onTap: (){},
              leading: Icon(CustomIcons.heart_icon_2, color: Colors.redAccent),
              title: Text('Favorit Saya'),
            ),
            Divider(),
            ListTile(
              onTap: (){},
              leading: Icon(CustomIcons.question_mark, color: Colors.greenAccent),
              title: Text('Pusat Bantuan'),
            ),
            Divider(),
            ListTile(
              onTap: () => Get.to(() => SettingAccountView(), transition: Transition.cupertino),
              leading: Icon(Icons.settings),
              title: Text('Pengaturan Akun'),
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){}, child: Text('Logout')),
            SizedBox(height: 10,),
          ]),
        ),
      ),
    );
  }
}
