import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:get/get.dart';

import '../../mainpage/views/mainpage_view.dart';

class CategoryBody extends StatelessWidget {
  const CategoryBody({Key? key}) : super(key: key);

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
                'KATEGORI',
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
          child: SizedBox(
            height: 300,
            child: GridView.count(
              // shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              crossAxisCount: 2,
              // crossAxisSpacing: 1.0,
              childAspectRatio: 1.5,
              // padding: const EdgeInsets.all(10.0),
              // mainAxisSpacing: 18.0,
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 5),
                  height: 70,
                  decoration: BoxDecoration(
                    // shape: BoxShape.circle,
                    color: Colors.white,
                    // boxShadow: [
                    //   BoxShadow(
                    //       spreadRadius: 4,
                    //       color: Colors.grey,
                    //       blurRadius: 3,
                    //       offset: Offset(4, 4))
                    // ]
                  ),
                  child: InkWell(
                    onTap: (() => Get.to(
                          () => MainpageView(),
                          transition: Transition.cupertino,
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Image.asset(
                          'assets/images/slide-1.png',
                          scale: 4,
                        ),
                        Center(
                          child: Text(
                            "Sport Shoes",
                            style: TextStyle(fontSize: 13.0),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 5),
                  color: Colors.white,
                  height: 70,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset(
                        'assets/images/slide-2.png',
                        scale: 5,
                      ),
                      Center(
                        child: Text(
                          "Games",
                          style: TextStyle(fontSize: 13.0),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 5),
                  color: Colors.white,
                  // height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset(
                        'assets/images/slide-7.jpg',
                        fit: BoxFit.fill,
                        scale: 1,
                      ),
                      Center(
                        child: Text(
                          "PC",
                          style: TextStyle(fontSize: 13.0),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 5),
                  color: Colors.white,
                  // height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset(
                        'assets/images/slide-6.jpg',
                        fit: BoxFit.fill,
                        scale: 5,
                      ),
                      Center(
                        child: Text(
                          "Mini Pc",
                          style: TextStyle(fontSize: 13.0),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 5),
                  color: Colors.white,
                  // height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset(
                        'assets/images/slide-5.jpg',
                        fit: BoxFit.fill,
                        scale: 5,
                      ),
                      Center(
                        child: Text(
                          "Notebook",
                          style: TextStyle(fontSize: 13.0),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 5),
                  color: Colors.white,
                  // height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset(
                        'assets/images/console.jpg',
                        fit: BoxFit.fill,
                        scale: 5,
                      ),
                      Center(
                        child: Text(
                          "Console",
                          style: TextStyle(fontSize: 13.0),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 5),
                  color: Colors.white,
                  // height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset(
                        'assets/images/smarttv.jpg',
                        fit: BoxFit.fill,
                        scale: 5,
                      ),
                      Center(
                        child: Text(
                          "Smart TV",
                          style: TextStyle(fontSize: 13.0),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 5),
                  color: Colors.white,
                  // height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset(
                        'assets/images/smartwatch.jpg',
                        fit: BoxFit.fill,
                        scale: 5,
                      ),
                      Center(
                        child: Text(
                          "Smart Watch",
                          style: TextStyle(fontSize: 13.0),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 5),
                  color: Colors.white,
                  // height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset(
                        'assets/images/rc.jpg',
                        fit: BoxFit.fill,
                        scale: 5,
                      ),
                      Center(
                        child: Text(
                          "RC",
                          style: TextStyle(fontSize: 13.0),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 5),
                  color: Colors.white,
                  // height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset(
                        'assets/images/drone.jpg',
                        fit: BoxFit.fill,
                        scale: 10,
                      ),
                      Center(
                        child: Text(
                          "Drone",
                          style: TextStyle(fontSize: 13.0),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    ]);
  }
}
