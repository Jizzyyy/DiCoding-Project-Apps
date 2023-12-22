import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_flutter/config/font_family.dart';
import 'package:learn_flutter/screen/tabbar_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset('assets/images/burger.png'),
      title: Text(
        "Fav Food",
        style: TextStyle(
          fontSize: 24.sp,
          fontFamily: FontFamily.interRegular,
        ),
      ),
      backgroundColor: Colors.white,
      showLoader: false,
      loadingText: Text("Tunggu Yaa...",
          style: TextStyle(
            fontSize: 14.sp,
            fontFamily: FontFamily.interRegular,
          )),
      navigator: const TabBarFirst(),
      durationInSeconds: 5,
    );
  }
}
