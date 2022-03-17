import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_apps/app/modules/address/views/add_address_view.dart';
import 'package:my_apps/cust_icons.dart.dart';

import '../controllers/address_controller.dart';

class AddressView extends GetView<AddressController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alamat Saya'),
        centerTitle: true,
      ),
      body: Column(children: [
        Padding(padding: EdgeInsets.only(top: 15)),
        ListTile(
          title: Text('Ade muhammad'),
          subtitle: Text(
              'Jl Griya Alam Sentul No 88, kampung lebak pasar, Babakan Madang, Sentul - Bogor 16810'),
          trailing: Icon(CustIcons.location_point),
        ),
        Divider(),
        ListTile(
          title: Text('Ary'),
          subtitle:
              Text('Kp pasir sireum rt 003/010, Ciranjang, Cianjur 18610'),
          trailing: Icon(CustIcons.location_point),
        ),
        Divider(),
        Container(
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          child: ElevatedButton(
              onPressed: () {
                Get.to(() => AddAddressView(), transition: Transition.cupertino);
              },
              child: Text('Tambah Alamat Baru')),
        )
      ]),
    );
  }
}
