import 'package:cupertino_text_button/cupertino_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_flutter/config/colors_app.dart';
import 'package:learn_flutter/config/font_family.dart';
import 'package:learn_flutter/widget/horizontal_view_home.dart';
import 'package:learn_flutter/widget/text_helper.dart';
import 'package:learn_flutter/widget/vertical_view_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Lokasi Saya',
                              style: TextStyle(
                                fontFamily: FontFamily.interMedium,
                                color: ColorsApp.black,
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Jl. Raya Winangun No.8',
                              style: TextStyle(
                                fontFamily: FontFamily.interRegular,
                                fontWeight: FontWeight.w800,
                                color: ColorsApp.black,
                                fontSize: 15.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Icon(Icons.notifications_active_outlined,
                          color: ColorsApp.black)
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: ColorsApp.inputgrey,
                        width: 2.w,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Row(
                        children: [
                          const Icon(Icons.search, color: ColorsApp.textgrey),
                          SizedBox(width: 8.w),
                          Text(
                            'Apa yang kamu inginkan hari ini ?',
                            style: TextStyle(
                              fontFamily: FontFamily.interMedium,
                              color: ColorsApp.textgrey,
                              fontSize: 13.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  SingleChildScrollView(
                    child: Container(
                      child: Container(
                        width: double.infinity,
                        height: 115.h,
                        decoration: BoxDecoration(
                          color: ColorsApp.primary,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  // Wrap the entire Row with Expanded
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        'assets/images/coinss.png',
                                        width: 15.w,
                                        height: 15.h,
                                      ),
                                      Flexible(
                                        child: FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: Text(
                                            "Poinmu",
                                            style: TextStyle(
                                              fontFamily: FontFamily.bold,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.white,
                                              fontSize: 18.sp,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ),
                                      Flexible(
                                        child: FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: Text(
                                            "2500",
                                            style: TextStyle(
                                              fontFamily: FontFamily.bold,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.white,
                                              fontSize: 22.sp,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 45.w,
                                      height: 35.h,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(12.r),
                                      ),
                                      child: FittedBox(
                                        child: Image.asset(
                                          'assets/images/share.png',
                                          width: 25.w,
                                          height: 25.h,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 5.h),
                                    Flexible(
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Text(
                                          "Tukar Poin",
                                          style: TextStyle(
                                            fontFamily: FontFamily.regular,
                                            fontWeight: FontWeight.w800,
                                            color: Colors.white,
                                            fontSize: 12.sp,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 12.h),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Kategori',
                      style: TextStyle(
                        fontFamily: FontFamily.bold,
                        fontWeight: FontWeight.w800,
                        color: ColorsApp.black,
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                  SizedBox(height: 14.h),
                  Wrap(
                    spacing: 4.w,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 70.w,
                            height: 60.h,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: ColorsApp.inputgrey,
                                  width: 2.w,
                                ),
                                borderRadius: BorderRadius.circular(12.r)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/nearby.png',
                                  width: 30.w,
                                  height: 30.h,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5.h),
                          Text(
                            "Terdekat",
                            style: TextStyle(
                              fontFamily: FontFamily.bold,
                              color: ColorsApp.black,
                              fontSize: 12.sp,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 8.w),
                      Column(
                        children: [
                          Container(
                            width: 70.w,
                            height: 60.h,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: ColorsApp.inputgrey,
                                  width: 2.w,
                                ),
                                borderRadius: BorderRadius.circular(12.r)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/discount.png',
                                  width: 30.w,
                                  height: 30.h,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5.h),
                          Text(
                            "Diskon",
                            style: TextStyle(
                              fontFamily: FontFamily.bold,
                              color: ColorsApp.black,
                              fontSize: 12.sp,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 8.w),
                      Column(
                        children: [
                          Container(
                            width: 70.w,
                            height: 60.h,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: ColorsApp.inputgrey,
                                  width: 2.w,
                                ),
                                borderRadius: BorderRadius.circular(12.r)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/best-seller.png',
                                  width: 30.w,
                                  height: 30.h,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5.h),
                          Text(
                            "Paling Laku",
                            style: TextStyle(
                              fontFamily: FontFamily.bold,
                              color: ColorsApp.black,
                              fontSize: 12.sp,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 8.w),
                      Column(
                        children: [
                          Container(
                            width: 70.w,
                            height: 60.h,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: ColorsApp.inputgrey,
                                  width: 2.w,
                                ),
                                borderRadius: BorderRadius.circular(12.r)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/healthy.png',
                                  width: 30.w,
                                  height: 30.h,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5.h),
                          Text(
                            "Sehat",
                            style: TextStyle(
                              fontFamily: FontFamily.bold,
                              color: ColorsApp.black,
                              fontSize: 12.sp,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Rating Tertinggi',
                              style: TextStyle(
                                fontFamily: FontFamily.bold,
                                fontWeight: FontWeight.w800,
                                color: ColorsApp.black,
                                fontSize: 18.sp,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Rating makanan terbaik buat kamu',
                              style: TextStyle(
                                fontFamily: FontFamily.bold,
                                fontWeight: FontWeight.w800,
                                color: ColorsApp.textgrey,
                                fontSize: 12.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                      CupertinoTextButton(
                        text: 'Lihat Selengkapnya',
                        color: ColorsApp.primary,
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: FontFamily.bold,
                            fontWeight: FontWeight.w800),
                        onTap: () {
                          // Do your text stuff here.
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  HorizontalListView(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Promo Hari Ini 25%',
                              style: TextStyle(
                                fontFamily: FontFamily.bold,
                                fontWeight: FontWeight.w800,
                                color: ColorsApp.black,
                                fontSize: 18.sp,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Pesan dan manfaatin promonya',
                              style: TextStyle(
                                fontFamily: FontFamily.bold,
                                fontWeight: FontWeight.w800,
                                color: ColorsApp.textgrey,
                                fontSize: 12.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                      CupertinoTextButton(
                        text: 'Lihat Selengkapnya',
                        color: ColorsApp.primary,
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: FontFamily.bold,
                            fontWeight: FontWeight.w800),
                        onTap: () {
                          // Do your text stuff here.
                        },
                      ),
                    ],
                  ),
                  VerticalListView(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
