import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skeleton/utils/constants/color_constants.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      primaryColor: Lightcolorconstants.primaryColor,
      cardColor: Lightcolorconstants.cardColor,
      errorColor: Lightcolorconstants.cancelColor,
      dividerColor: Lightcolorconstants.bgColor,
      primaryColorLight: Lightcolorconstants.buttonColor,
      scaffoldBackgroundColor: Colors.white,
      applyElevationOverlayColor: true,
      appBarTheme: AppBarTheme(
        toolbarHeight: 60.h,
        backgroundColor: Lightcolorconstants.primaryColor,
      ),
      shadowColor: Lightcolorconstants.backgroudColor,
      highlightColor: Lightcolorconstants.confirmColor,
      canvasColor: Lightcolorconstants.canvasCalor,
      disabledColor: Lightcolorconstants.disabledButtonColor,
      textTheme: TextTheme(
        caption: GoogleFonts.montserrat(
            fontWeight: FontWeight.w500,
            fontSize: 14.sp,
            // height: 19.6.h,
            color: Lightcolorconstants.buttonColor),
        subtitle1: GoogleFonts.montserrat(
            fontWeight: FontWeight.w600,
            fontSize: 12.sp,

            // height: 19.6.h,
            color: Lightcolorconstants.textColor2),
        subtitle2: GoogleFonts.montserrat(
            fontWeight: FontWeight.w600,
            fontSize: 14.sp,

            // height: 19.6.h,
            color: const Color(0xffa8a8a8)),
        bodyText1: GoogleFonts.montserrat(
            fontWeight: FontWeight.w600,
            fontSize: 12.sp,
            // height: 19.6.h,
            color: Lightcolorconstants.textColor),
        bodyText2: GoogleFonts.montserrat(
            fontWeight: FontWeight.w600,
            fontSize: 24.sp,
            // height: 19.6.h,
            color: Lightcolorconstants.textColor),
        headline1: GoogleFonts.montserrat(
            fontWeight: FontWeight.w500,
            fontSize: 12.sp,
            // height: 19.6.h,
            color: Lightcolorconstants.buttonColor),
        headline2: GoogleFonts.montserrat(
            fontWeight: FontWeight.w500,
            fontSize: 18.sp,
            // height: 19.6.h,
            color: Lightcolorconstants.textColor),
        headline3: GoogleFonts.montserrat(
            fontWeight: FontWeight.w600,
            fontSize: 24.sp,
            // height: 19.6.h,
            color: Lightcolorconstants.textColor),
        headline4: GoogleFonts.montserrat(
            fontWeight: FontWeight.w700,
            fontSize: 18.sp,
            // height: 19.6.h,
            color: Lightcolorconstants.buttonColor),
        headline5: GoogleFonts.montserrat(
            fontWeight: FontWeight.w600,
            fontSize: 16.sp,
            // height: 19.6.h,
            color: Colors.white),
        headline6: GoogleFonts.montserrat(
            fontWeight: FontWeight.w600,
            fontSize: 12.sp,
            // height: 19.6.h,
            color: Lightcolorconstants.textColor),
      ));
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      primaryColor: DarkColorConstants.primaryColor,
      cardColor: DarkColorConstants.cardColor,
      errorColor: DarkColorConstants.cancelColor,
      dividerColor: DarkColorConstants.bgColor,
      primaryColorLight: DarkColorConstants.buttonColor,
      scaffoldBackgroundColor: Colors.white,
      applyElevationOverlayColor: true,
      appBarTheme: AppBarTheme(
        toolbarHeight: 60.h,
        backgroundColor: DarkColorConstants.primaryColor,
      ),
      shadowColor: DarkColorConstants.backgroudColor,
      highlightColor: DarkColorConstants.confirmColor,
      canvasColor: DarkColorConstants.canvasCalor,
      disabledColor: DarkColorConstants.disabledButtonColor,
      textTheme: TextTheme(
        caption: GoogleFonts.montserrat(
            fontWeight: FontWeight.w500,
            fontSize: 14.sp,
            // height: 19.6.h,
            color: DarkColorConstants.buttonColor),
        subtitle1: GoogleFonts.montserrat(
            fontWeight: FontWeight.w600,
            fontSize: 12.sp,

            // height: 19.6.h,
            color: DarkColorConstants.textColor2),
        subtitle2: GoogleFonts.montserrat(
            fontWeight: FontWeight.w600,
            fontSize: 14.sp,

            // height: 19.6.h,
            color: const Color(0xffa8a8a8)),
        bodyText1: GoogleFonts.montserrat(
            fontWeight: FontWeight.w600,
            fontSize: 12.sp,
            // height: 19.6.h,
            color: DarkColorConstants.textColor),
        bodyText2: GoogleFonts.montserrat(
            fontWeight: FontWeight.w600,
            fontSize: 24.sp,
            // height: 19.6.h,
            color: DarkColorConstants.textColor),
        headline1: GoogleFonts.montserrat(
            fontWeight: FontWeight.w500,
            fontSize: 12.sp,
            // height: 19.6.h,
            color: DarkColorConstants.buttonColor),
        headline2: GoogleFonts.montserrat(
            fontWeight: FontWeight.w500,
            fontSize: 18.sp,
            // height: 19.6.h,
            color: DarkColorConstants.textColor),
        headline3: GoogleFonts.montserrat(
            fontWeight: FontWeight.w600,
            fontSize: 24.sp,
            // height: 19.6.h,
            color: DarkColorConstants.textColor),
        headline4: GoogleFonts.montserrat(
            fontWeight: FontWeight.w700,
            fontSize: 18.sp,
            // height: 19.6.h,
            color: DarkColorConstants.buttonColor),
        headline5: GoogleFonts.montserrat(
            fontWeight: FontWeight.w600,
            fontSize: 16.sp,
            // height: 19.6.h,
            color: Colors.white),
        headline6: GoogleFonts.montserrat(
            fontWeight: FontWeight.w600,
            fontSize: 12.sp,
            // height: 19.6.h,
            color: DarkColorConstants.textColor),
      ));
}
