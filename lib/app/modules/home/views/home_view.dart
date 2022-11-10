import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/color_constants.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () {
              Get.bottomSheet(
                Container(
                  // .h is used for adding constant height for all screens, it will take only 120 logical vertical pixels on each and every device size
                  height: 120.h,
                  // .w is used for adding constant height for all screens, it will take only 120 logical horizontal pixels on each and every device size
                  width: 360.w,
                  // .sm is used for margins and paddings
                  padding: EdgeInsets.symmetric(horizontal: 30.sm),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      // .r is used for radius
                      topLeft: Radius.circular(10.r),
                      topRight: Radius.circular(10.r),
                    ),
                  ),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.changeThemeMode(ThemeMode.light);
                          Get.back();
                        },
                        child: CircleAvatar(
                          backgroundColor: Lightcolorconstants.primaryColor,
                          radius: 25.r,
                          child: Center(
                            child: Icon(
                              Entypo.light_up,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 25.w,
                      ),
                      InkWell(
                        onTap: () {
                          Get.changeThemeMode(ThemeMode.dark);
                          Get.back();
                        },
                        child: CircleAvatar(
                          backgroundColor: DarkColorConstants.primaryColor,
                          radius: 25.r,
                          child: Center(
                            child: Icon(
                              Entypo.light_down,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            child: Padding(
              padding: EdgeInsets.all(8.sm),
              child: Icon(Icons.settings),
            ),
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.r)),
            // .sh is used for acquiring total available screen height
            height: 1.sh,
            // .sw is used for acquiring total available screen width
            width: 1.sw,
            padding: EdgeInsets.all(8.sm),
            child: Center(
              child: Text(
                'HomeView is working',
                // .sm is used for textSize
                style: TextStyle(fontSize: 20.sp),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
