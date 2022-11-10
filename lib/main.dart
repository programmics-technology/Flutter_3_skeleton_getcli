import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'app/services/localization_service.dart';
import 'utils/themes/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var languages = await Messages.func();
  runApp(
    ScreenUtilInit(
        // this will divide the screen into equal 360 parts horizontally and 760 parts vertically, no matter what is the size of device
        // so this will work as logical pixels
        designSize: const Size(360, 760),
        builder: (context, widget) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            locale: const Locale('en', 'US'),
            translations: Messages(languages: languages),
            fallbackLocale: const Locale('en', 'US'),
            title: "Application",
            theme: AppTheme.lightTheme,
            themeMode: ThemeMode.light,
            darkTheme: AppTheme.darkTheme,
            initialRoute: AppPages.initial,
            getPages: AppPages.routes,
          );
        }),
  );
}
