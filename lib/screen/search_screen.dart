import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_flutter/config/colors_app.dart';
import 'package:learn_flutter/config/font_family.dart';
import 'package:learn_flutter/widget/list_filter_search.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 15.w),
          child: Column(
            children: [
              Container(
                width: double.infinity,
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
                          overflow: TextOverflow.ellipsis
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 14.h),
                child: SizedBox(
                  height: 35.h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      FilterCategory(text: 'Makanan Terdekat'),
                      FilterCategory(text: 'Promo'),
                      FilterCategory(text: 'Makanan Terbaik'),
                      // Add more categories as needed
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40.h),
              Center(
                child: Column(
                  children: [
                    Icon(Icons.search, color: ColorsApp.textgrey, size: 100.w),
                    Text(
                      'Coba Cari Sesuatu',
                      style: TextStyle(
                        fontFamily: FontFamily.interMedium,
                        color: ColorsApp.textgrey,
                        fontSize: 15.sp,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
