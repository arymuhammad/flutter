import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AddAddressView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alamat Baru'),
        centerTitle: true,
      ),
      body: Container(
        height: Get.size.height,
        width: Get.size.width,
        child: ListView(
          shrinkWrap: true,
          children: [
            Container(
                padding: EdgeInsets.only(top: 12, left: 16),
                height: 40,
                decoration: BoxDecoration(color: Colors.grey[300]),
                child: Text(
                  'Kontak',
                  style: TextStyle(color: Color.fromARGB(255, 150, 146, 146)),
                )),
            ListTile(
              onTap: () {},
              title: TextField(
                  decoration: InputDecoration.collapsed(
                hintText: 'Nama Lengkap',
              )),
            ),
            Divider(),
            ListTile(
              onTap: () {},
              title: TextField(
                  decoration: InputDecoration.collapsed(
                hintText: 'No Handphone',
              ),
              keyboardType: TextInputType.phone,),
            ),

            Container(
                padding: EdgeInsets.only(top: 12, left: 16),
                height: 40,
                decoration: BoxDecoration(color: Colors.grey[300]),
                child: Text(
                  'Alamat',
                  style: TextStyle(color: Color.fromARGB(255, 150, 146, 146)),
                )),
            ListTile(
              onTap: () {},
              title: TextField(
                  decoration: InputDecoration.collapsed(
                hintText: 'Provinsi, Kota, Kecamatan, Kode Pos',
              )),
            ),
            Divider(),
            ListTile(
              onTap: () {},
              title: TextField(
                  decoration: InputDecoration.collapsed(
                hintText: 'Nama Jalan, Gedung, No.Rumah',
              ),),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton(onPressed: () {}, child: Text('SIMPAN')),
            )
          ],
        ),
      ),
    );
  }
}
