import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:get/get.dart';
import 'package:my_apps/app/modules/mainpage/views/mainpage_view.dart';

import '../controllers/home_controller.dart';

class Brand extends StatelessWidget {
  Brand({Key? key}) : super(key: key);

  final brand = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
            padding: const EdgeInsets.only(left: 4, right: 4),
            // height: 250,
            // decoration: const BoxDecoration(
            //     // color: Colors.blue,
            //     border: Border.fromBorderSide(BorderSide(color: Colors.blue))),
            child: const Padding(
              padding: EdgeInsets.only(left: 5, top: 10),
              child: Text(
                'BRAND',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )),
        Container(
          padding: const EdgeInsets.only(left: 4, right: 10),
          // height: 250,
          // decoration: const BoxDecoration(
          //     // color: Colors.blue,
          //     border:  Border.fromBorderSide(BorderSide(color: Colors.blue))),
          child: Padding(
              padding: EdgeInsets.only(left: 2, top: 10),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.blue)))),
                onPressed: () {},
                child: const Text(
                  'Lihat Semua',
                  style: TextStyle(color: Color.fromARGB(255, 21, 135, 248)),
                ),
              )),
        )
      ]),
      Column(children: [
        Padding(
          padding: EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          child: Obx(() => SizedBox(
                  height: 300,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200,
                            childAspectRatio: 3 / 2,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20),
                    scrollDirection: Axis.horizontal,
                    itemCount: brand.brandList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.only(bottom: 5),
                        color: Colors.white,
                        // height: 100,
                        child: InkWell(
                          onTap: () => Get.to(() => MainpageView(), 
                          arguments: brand.brandList[index].id
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
      //                         Center(
      //   child: Text(brand.isConnected == true ? 'Connected' : 'Not Connected',
      //       style: TextStyle(fontSize: 24)),
      // ),
                              Container(
                                height: 65,
                                // width: 65,
                                child: Image.network(
                                'http://103.112.139.155/ecomm-laptop-master/public/brand/' +
                                    brand.brandList[index].image,fit: BoxFit.cover,
                                    scale: 3,
                              )
                              ),
                              Center(
                                child: Text(
                                  brand.brandList[index].brand,
                                  style: TextStyle(fontSize: 15.0),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ))
              ),
        ),
      ]),
    ]);
  }
}
