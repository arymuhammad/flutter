import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/account_controller.dart';

class AccountView extends GetView<AccountController> {
  final ac = Get.put(AccountController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ubah Data Akun'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.check),
          )
        ],
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              title: Text('Nama'),
              trailing: Text('Ari'),
            ),
            Divider(),
            ListTile(
              title: Text('Username'),
              trailing: Text('muhammadary13'),
            ),
            Divider(),
            ListTile(
              title: Text('Jenis Kelamin'),
              trailing: Text('Pria'),
              onTap: () {
                Get.defaultDialog(
                    title: 'Jenis Kelamin',
                    content: Column(
                      children: [
                        RadioListTile(
                          value: Text('Pria'),
                          groupValue: ac.selectedRadioTile,
                          title: Text('Pria'),
                          onChanged: (val) {
                            ac.setSelectedRadioTile;
                          },
                          selected: ac.selectedRadioTile == Text('Pria')
                          ),
                        RadioListTile(
                          value: Text('Wanita'),
                          groupValue: ac.selectedRadioTile,
                          title: Text('Wanita'),
                          onChanged: (val) {
                            ac.setSelectedRadioTile;
                          },
                          selected: ac.selectedRadioTile == Text('Wanita')
                          ),
                      ]
                    ));
              },
            ),
            Divider(),
            ListTile(
              title: Text('Tanggal Lahir'),
              trailing: Text('1994-01-13'),
            ),
            Divider(),
            ListTile(
              title: Text('Handphone'),
              trailing: Text('******651184'),
            ),
            Divider(),
            ListTile(
              title: Text('Email'),
              trailing: Text('muhammadary13@gmail.com'),
            ),
            Divider(),
            ListTile(
              title: Text('Ubah Password'),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
