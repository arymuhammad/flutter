import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_apps/app/modules/account/views/account_view.dart';
import 'package:my_apps/app/modules/address/views/address_view.dart';
import 'package:my_apps/custom_icons_icons.dart';

import '../controllers/setting_controller.dart';

class SettingAccountView extends GetView<SettingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pengaturan Akun'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(children: [
          ListTile(
              onTap: () => Get.to(() => AccountView(), transition: Transition.cupertino),
              leading: Icon(CustomIcons.user),
              title: Text('Profile Saya'),
              trailing: Icon(Icons.keyboard_arrow_right_outlined)),
          Divider(),
          ListTile(
              onTap: () => Get.to(() => AddressView(), transition: Transition.cupertino),
              leading: Icon(CustomIcons.location_point),
              title: Text('Alamat Saya'),
              trailing: Icon(Icons.keyboard_arrow_right_outlined)),
          Divider(),
          ListTile(
              onTap: () {},
              leading: Icon(CustomIcons.bell),
              title: Text('Pengaturan Notifikasi'),
              trailing: Icon(Icons.keyboard_arrow_right_outlined)),
          Divider(),
        ]),
      ),
    );
  }
}
