import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import '../../all_content/views/all_content_view.dart';
import '../../home/views/home_view.dart';
import '../controllers/index_controller.dart';

class IndexView extends GetView<IndexController> {
  const IndexView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff11161F),
      body: PageView(
        controller: controller.pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          HomeView(),
          AllContentView()
        ],
      ),

      bottomNavigationBar: Obx((){
        return bottomNav();
      }),

    );
  }


  Widget bottomNav(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 6),
      margin: EdgeInsets.only(left: 16, right: 16, bottom: 12),
      decoration: BoxDecoration(
          color: Color(0xff1C212A),
          border: Border.all(width: 1, color: Colors.black),
          borderRadius: BorderRadius.circular(100)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: (){
              controller.currentIndex.value = 0;
              controller.pageController.jumpToPage(controller.currentIndex.value);
            },
            child: Container(
              padding: EdgeInsets.all(12),
              height: 50,
              width: 50,
              child: SvgPicture.asset(
                controller.icon_bottom_nav[0],
                color: controller.currentIndex.value == 0 ? Colors.red: Color(0xff666666),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              controller.currentIndex.value = 1;
              controller.pageController.jumpToPage(controller.currentIndex.value);
            },
            child: Container(
              padding: EdgeInsets.all(12),
              height: 50,
              width: 50,
              child: SvgPicture.asset(
                controller.icon_bottom_nav[1],
                color: controller.currentIndex.value == 1 ? Colors.red: Color(0xff666666),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(12),
            height: 50,
            width: 50,
            child: SvgPicture.asset(
                controller.icon_bottom_nav[2]
            ),
          ),
          Container(
            padding: EdgeInsets.all(12),
            height: 50,
            width: 50,
            child: SvgPicture.asset(
                controller.icon_bottom_nav[3]
            ),
          ),

        ],
      ),
    );
  }

}
