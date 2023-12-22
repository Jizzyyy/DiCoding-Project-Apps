import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_flutter/config/colors_app.dart';
import 'package:learn_flutter/config/font_family.dart';

class HorizontalListView extends StatelessWidget {
  final List<Map<String, String>> items = [
    {
      'image': 'assets/images/mentah1.jpg',
      'text1': '0.64 km - 4 menit',
      'text2': 'Bebek Goreng Purnama',
      'text3': '4.9',
    },
    {
      'image': 'assets/images/imagesmakan1.jpg',
      'text1': '0.98 km - 6 menit',
      'text2': 'Rawon Kalkulator',
      'text3': '4.0',
    },
    {
      'image': 'assets/images/imagesmakan2.jpg',
      'text1': '1.22 km - 8 menit',
      'text2': 'Bebek Goreng Sinjay',
      'text3': '4.7',
    },
    {
      'image': 'assets/images/imagesmakan3.jpg',
      'text1': '1.42 km - 10 menit',
      'text2': 'Tahu Telur Pak Jayen',
      'text3': '4.5',
    },
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.map((item) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: GestureDetector(
              onTap: () {},
              child: ListItem(
                image: item['image']!,
                text1: item['text1']!,
                text2: item['text2']!,
                text3: item['text3']!,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String image;
  final String text1;
  final String text2;
  final String text3;

  const ListItem({
    required this.image,
    required this.text1,
    required this.text2,
    required this.text3,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 180.w,
          height: 110.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          text1,
          style: TextStyle(
            fontFamily: FontFamily.bold,
            fontSize: 12.sp,
            color: ColorsApp.textgrey,
          ),
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
          children: [
            Image.asset('assets/images/star.png', width: 14.w, height: 10.h),
            SizedBox(width: 2.w),
            Text(
              text3,
              style: TextStyle(
                fontFamily: FontFamily.bold,
                fontSize: 14.sp,
                color: ColorsApp.textgrey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
