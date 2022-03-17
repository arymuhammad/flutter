import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:get/get.dart';
import 'package:my_apps/app/modules/cart/views/cart_view.dart';
import 'package:my_apps/app/modules/searchpage/views/search_page_view.dart';
import 'package:my_apps/custom_icons_icons.dart';

import '../../notifications/views/notifications_view.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8.0,
      child: Stack(
        children: [
          ImageSlideshow(
            children: [
              Image.asset(
                'assets/images/slide-4.jpg',
                fit: BoxFit.fill,
              ),
              Image.asset(
                'assets/images/slide-5.jpg',
                fit: BoxFit.fill,
              ),
              Image.asset(
                'assets/images/slide-6.jpg',
                fit: BoxFit.fill,
              ),
              Image.asset(
                'assets/images/slide-7.jpg',
                fit: BoxFit.fill,
              ),
            ],
            autoPlayInterval: 3000,
            height: 250,

            /// Loops back to first slide.
            isLoop: true,
          ),
          // Padding(
          //     padding: const EdgeInsets.fromLTRB(10, 40, 0, 0),
          //     child:
          Theme(
              data: Theme.of(context).copyWith(splashColor: Colors.transparent),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: Get.size.width * 0.70,
                    padding: EdgeInsets.only(top: 30),
                    child: TextFormField(
                        onTap: (() => Get.to(() => SearchPageView(),
                            transition: Transition.cupertino)),
                        readOnly: true,
                        autofocus: false,
                        style: const TextStyle(
                          fontSize: 20.0,
                        ),
                        decoration: InputDecoration(
                            prefixIcon:
                                const Icon(CustomIcons.search_icon, size: 22),
                            hintText: 'Search',
                            hintStyle: TextStyle(fontSize: 15),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: const EdgeInsets.only(
                                left: 14.0, bottom: 8.0, top: 8.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(10)))),
                  ),
                  IconButton(
                      padding: EdgeInsets.only(top: 30),
                      onPressed: () => Get.to(() => CartView(),
                          transition: Transition.cupertino),
                      icon: const Icon(
                        CustomIcons.cart_icon,
                        color: Color.fromARGB(255, 124, 121, 121),
                      )),
                  //  SizedBox(width: 10,) ,
                  IconButton(
                      padding: EdgeInsets.only(top: 30),
                      onPressed: () => Get.to(() => NotificationsView(),
                          transition: Transition.cupertino),
                      icon: const Icon(
                        CustomIcons.bell,
                        color: Color.fromARGB(255, 124, 121, 121),
                      ))
                ],
              )),
        ],
      ),
    );
  }
}
