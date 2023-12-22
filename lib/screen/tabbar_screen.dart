import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_flutter/config/colors_app.dart';
import 'package:learn_flutter/config/font_family.dart';
import 'package:learn_flutter/screen/login_screen.dart';
import 'package:learn_flutter/screen/register_screen.dart';

class TabBarFirst extends StatefulWidget {
  const TabBarFirst({super.key});

  @override
  State<TabBarFirst> createState() => _TabBarFirstState();
}

class _TabBarFirstState extends State<TabBarFirst>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Container(
                  width: double.infinity,
                  height: 180.h,
                  decoration: BoxDecoration(
                    color: ColorsApp.primary,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24.r), // Radius bawah kiri
                      bottomRight: Radius.circular(24.r), // Radius bawah kanan
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Text(
                        "Pesan Makananmu \ndengan mudah",
                        style: TextStyle(
                          fontFamily: 'nunito-b',
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                          fontSize: 23.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 10.w),
                child: Container(
                  width: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: ColorsApp.inputgrey,
                    borderRadius: BorderRadius.circular(40.r),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.w),
                        child: TabBar(
                            unselectedLabelColor: ColorsApp.primary,
                            labelColor: ColorsApp.primary,
                            indicatorColor: ColorsApp.primary,
                            // indicator: BoxDecoration(
                            //   color: ColorsApp.primary,
                            //   borderRadius: BorderRadius.circular(20.r),
                            // ),
                            controller: _tabController,
                            tabs: [
                              Tab(
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                      fontSize: 15.sp, fontFamily: FontFamily.bold),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  'Register',
                                  style: TextStyle(
                                      fontSize: 15.sp, fontFamily: FontFamily.bold),
                                ),
                              )
                            ]),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  child: TabBarView(
                      controller: _tabController,
                      children: const [LoginScreen(), RegisterScreen()]))
            ],
          ),
        ),
      );
  }
}
