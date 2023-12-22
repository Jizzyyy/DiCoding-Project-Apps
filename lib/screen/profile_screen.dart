import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_flutter/config/colors_app.dart';
import 'package:learn_flutter/config/font_family.dart';
import 'package:learn_flutter/widget/text_helper.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: ColorsApp.primary,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.r),
                  bottomRight: Radius.circular(20.r),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 25.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextHelper(
                        text: 'Profil',
                        fontSize: 15.sp,
                        fontFamily: FontFamily.interMedium,
                        fontColor: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(height: 30.h),
                  Center(
                      child: SizedBox(
                          width: 130.w,
                          height: 140.h,
                          child: Image.asset(
                            'assets/images/profile.png',
                            width: 120.w,
                            height: 120.h,
                            fit: BoxFit.cover,
                          ))),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextHelper(
                        text: 'Simon Regamon',
                        fontSize: 15.sp,
                        fontFamily: FontFamily.interMedium,
                        fontColor: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(height: 30.h),
                  Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          TextHelper(
                            text: '2500',
                            fontSize: 16.sp,
                            fontFamily: FontFamily.regular,
                            fontColor: Colors.white,
                          ),
                          TextHelper(
                            text: 'Koin',
                            fontSize: 14.sp,
                            fontFamily: FontFamily.regular,
                            fontColor: Colors.white,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          TextHelper(
                            text: 'Rp 27.500,-',
                            fontSize: 16.sp,
                            fontFamily: FontFamily.regular,
                            fontColor: Colors.white,
                          ),
                          TextHelper(
                            text: 'Saldo',
                            fontSize: 14.sp,
                            fontFamily: FontFamily.regular,
                            fontColor: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  )),
                  SizedBox(height: 30.h),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 20.w),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.email, color: ColorsApp.textgrey, size: 26.h),
                      SizedBox(width: 15.h),
                      Column(
                        children: [
                          TextHelper(
                            text: 'simonregamon2@gmail.com',
                            fontSize: 13.sp,
                            fontFamily: FontFamily.interMedium,
                            fontColor: ColorsApp.textgrey,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Divider(thickness: 1.h),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      Icon(Icons.account_circle,
                          color: ColorsApp.textgrey, size: 26.h),
                      SizedBox(width: 15.h),
                      Column(
                        children: [
                          TextHelper(
                            text: 'Simon Regamon',
                            fontSize: 13.sp,
                            fontFamily: FontFamily.interMedium,
                            fontColor: ColorsApp.textgrey,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Divider(thickness: 1.h),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      Icon(Icons.phone, color: ColorsApp.textgrey, size: 26.h),
                      SizedBox(width: 15.h),
                      Column(
                        children: [
                          TextHelper(
                            text: '081333722392',
                            fontSize: 13.sp,
                            fontFamily: FontFamily.interMedium,
                            fontColor: ColorsApp.textgrey,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Divider(thickness: 1.h),
                  SizedBox(height: 10.h),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
