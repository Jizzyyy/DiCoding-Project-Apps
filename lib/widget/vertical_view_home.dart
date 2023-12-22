import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_flutter/config/colors_app.dart';
import 'package:learn_flutter/config/font_family.dart';

class VerticalListView extends StatelessWidget {
  final List<Widget> items = const [
    ListItem(
      image: 'assets/images/mentah1.jpg',
      text1: 'Promo',
      text2: 'Bebek Goreng Purnama',
      text3: '0.64 km',
      text4: '4.9',
    ),
    ListItem(
      image: 'assets/images/imagesmakan1.jpg',
      text1: 'Promo',
      text2: 'Rawon Kalkulator',
      text3: '0.98 km',
      text4: '4.0',
    ),
    ListItem(
      image: 'assets/images/imagesmakan2.jpg',
      text1: 'Promo',
      text2: 'Bebek Goreng Sinjay',
      text3: '1.22 km',
      text4: '4.7',
    ),
    ListItem(
      image: 'assets/images/imagesmakan3.jpg',
      text1: 'Promo',
      text2: 'Tahu Telur Pak Jayen',
      text3: '1.42 km',
      text4: '4.5',
    ),
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 6.h),
          child: items[index],
        );
      },
    );
  }
}

class ListItem extends StatelessWidget {
  final String image;
  final String text1;
  final String text2;
  final String text3;
  final String text4;

  const ListItem(
      {required this.image,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.text4});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 80.w,
          height: 85.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(width: 8.w),
        Padding(
          padding: EdgeInsets.all(8.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text1,
                style: TextStyle(
                    fontFamily: FontFamily.bold,
                    fontSize: 12.sp,
                    color: ColorsApp.yellow),
              ),
              Text(
                text2,
                style: TextStyle(
                  fontFamily: FontFamily.bold,
                  fontSize: 16.sp,
                  color: ColorsApp.black,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    text3,
                    style: TextStyle(
                        fontFamily: FontFamily.bold,
                        fontSize: 14.sp,
                        color: ColorsApp.textgrey),
                  ),
                  Image.asset('assets/images/star.png',
                      width: 14.w, height: 10.h),
                  SizedBox(width: 2.w),
                  Text(
                    text4,
                    style: TextStyle(
                        fontFamily: FontFamily.bold,
                        fontSize: 14.sp,
                        color: ColorsApp.textgrey),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
