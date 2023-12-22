import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_flutter/config/colors_app.dart';
import 'package:learn_flutter/screen/home_screen.dart';
import 'package:learn_flutter/screen/profile_screen.dart';
import 'package:learn_flutter/screen/search_screen.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  var _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: const [HomeScreen(), SearchScreen(), ProfileScreen()],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (i) => setState(() {
            _currentIndex = i;
            _pageController.animateToPage(i,
                duration: const Duration(milliseconds: 500),
                curve: Curves.ease);
          }),
          items: [
            SalomonBottomBarItem(
              icon: const Icon(Icons.home),
              title: const Text("Beranda"),
              selectedColor: ColorsApp.primary,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.search),
              title: const Text("Pencarian"),
              selectedColor: ColorsApp.primary,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.person),
              title: const Text("Profil"),
              selectedColor: ColorsApp.primary,
            ),
          ],
        ),
      ),
    );
  }
}
