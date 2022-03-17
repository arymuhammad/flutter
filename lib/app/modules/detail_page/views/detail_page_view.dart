import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import 'package:get/get.dart';
import 'package:my_apps/app/modules/checkout/views/checkout_view.dart';
import 'package:my_apps/app/modules/detail_page/views/product_tile.dart';
import 'package:my_apps/cust_icons.dart.dart';
import 'package:my_apps/custom_icons_icons.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

import '../controllers/detail_page_controller.dart';

class DetailPageView extends GetView<DetailPageController> {
  var a = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          margin: const EdgeInsets.only(left: 1, right: 15),
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () {
                      /* Clear the search field */
                    },
                  ),
                  hintText: 'Search...',
                  border: InputBorder.none),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_rounded),
            padding: EdgeInsets.only(right: 10),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ImageSlideshow(
              children: [
                CachedNetworkImage(imageUrl: a[5]),
              ],
              // autoPlayInterval: 3000,
              height: 250,

              /// Loops back to first slide.
              isLoop: false,
            ),
            // Divider(),
            Container(
              // padding: EdgeInsets.all(10),
              // height: 250,
              // width: Get.size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            a[1],
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Rp ${a[2]}',
                          style: TextStyle(fontSize: 20, color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 4, vertical: 2),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                a[6].toString(),
                                style: TextStyle(color: Colors.white),
                              ),
                              Icon(
                                Icons.star,
                                size: 16,
                                color: Colors.amber,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 8,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Container(
                          child: Icon(CustomIcons.shipping_fast),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Ongkos kirim: Rp0 - Rp18.000')
                    ],
                  ),
                  Divider(
                    thickness: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Deskripsi Produk'.toUpperCase(),
                              textAlign: TextAlign.start,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Divider(thickness:3, height: 3,),
                            SizedBox(
                              width: Get.size.width * 0.90,
                              child: Text(
                                'Tas Masa Kini dengan bahan yang sangat kuat. Cocok untuk membawa perbekalan ke gunung 5 jari, tempat sun go kong terpenjara.',
                                maxLines: 3,
                                // overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 56,
        // margin: EdgeInsets.symmetric(vertical: 24, horizontal: 12),
        child: Row(
          children: <Widget>[
            InkWell(
              onTap: () {},
              child: Container(
                width: 75,
                color: Colors.green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(CustomIcons.conversation, color: Colors.white),
                    Text("CHAT", style: TextStyle(color: Colors.white))
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: 75,
                color: Colors.green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.shopping_cart, color: Colors.white),
                    Text("TAMBAH", style: TextStyle(color: Colors.white))
                  ],
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () => Get.to(() => CheckoutView(),
                    transition: Transition.cupertino),
                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      color: Colors.blue,
                      child: Text("BELI SEKARANG",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white)),
                    ),
                    Padding(padding: EdgeInsets.all(15)),
                    Container(
                      height: 25,
                      alignment: Alignment.center,
                      decoration:
                          BoxDecoration(color: Color.fromARGB(85, 0, 0, 0)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
