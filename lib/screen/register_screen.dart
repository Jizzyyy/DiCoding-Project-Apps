import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_flutter/config/colors_app.dart';
import 'package:learn_flutter/config/font_family.dart';
import 'package:learn_flutter/widget/passwordfield_helper.dart';
import 'package:learn_flutter/widget/text_helper.dart';
import 'package:learn_flutter/widget/textfield_helper.dart';
import 'package:text_divider/text_divider.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late bool _isPasswordVisible;
  bool get isPasswordVisible => _isPasswordVisible;
  var formKey = GlobalKey<FormState>();

  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  final TextEditingController _confirmpasswordcontroller =
      TextEditingController();

  void togglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  @override
  void initState() {
    _isPasswordVisible = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                child: Column(children: [
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset:
                              const Offset(0, 2) // Ubah offset sesuai kebutuhan
                          )
                    ]),
                    child: TextFieldHelper(
                      controller: _namaController,
                      hintText: 'Nama',
                      borderRadius: 20.r,
                      textStyle:
                          TextStyle(fontSize: 17.sp, color: Colors.black),
                      // validator: (String? value) {
                      //   if (value == null || value.isEmpty) {
                      //     return 'Masukkan username terlebih dahulu';
                      //   }
                      //   if (value.length < 8) {
                      //     return 'Minimal 8 karakter';
                      //   }
                      //   return null; // Return null for a valid input
                      // },
                      prefixIcon:
                          const Icon(Icons.email, color: ColorsApp.primary),
                      inputFormatter: [
                        FilteringTextInputFormatter.deny(RegExp(r'\s')),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.h),
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset:
                              const Offset(0, 2) // Ubah offset sesuai kebutuhan
                          )
                    ]),
                    child: TextFieldHelper(
                      controller: _emailcontroller,
                      hintText: 'Email',
                      borderRadius: 20.r,
                      textStyle:
                          TextStyle(fontSize: 17.sp, color: Colors.black),
                      // validator: (String? value) {
                      //   if (value == null || value.isEmpty) {
                      //     return 'Masukkan email terlebih dahulu';
                      //   }
                      //   if (!RegExp(
                      //           r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
                      //       .hasMatch(value)) {
                      //     return 'Masukkan email yang valid';
                      //   }
                      //   return null; // Return null for a valid input
                      // },
                      prefixIcon:
                          const Icon(Icons.email, color: ColorsApp.primary),
                      inputFormatter: [
                        FilteringTextInputFormatter.deny(RegExp(r'\s')),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.h),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: PasswordFieldHelper(
                        controller: _passwordcontroller,
                        hintText: 'Kata Sandi',
                        borderRadius: 20.r,
                        // validator: (String? value) {
                        //   if (value == null || value.isEmpty) {
                        //     return 'Masukkan password terlebih dahulu';
                        //   }
                        //   if (value.length < 8) {
                        //     return 'Kata sandi lebih dari 8 karakter';
                        //   }
                        //   return null; // Return null for a valid input
                        // },
                        prefixIcon:
                            const Icon(Icons.lock, color: ColorsApp.primary),
                        suffixOnTap: () {
                          togglePasswordVisibility();
                        },
                        obscureText: isPasswordVisible),
                  ),
                  SizedBox(height: 15.h),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: PasswordFieldHelper(
                        controller: _confirmpasswordcontroller,
                        hintText: 'Konfirmasi Kata Sandi',
                        borderRadius: 20.r,
                        // validator: (String? value) {
                        //   if (value == null || value.isEmpty) {
                        //     return 'Masukkan password terlebih dahulu';
                        //   }
                        //   if (value.length < 8) {
                        //     return 'Kata sandi lebih dari 8 karakter';
                        //   }
                        //   return null; // Return null for a valid input
                        // },
                        prefixIcon:
                            const Icon(Icons.lock, color: ColorsApp.primary),
                        suffixOnTap: () {
                          togglePasswordVisibility();
                        },
                        obscureText: isPasswordVisible),
                  )
                ]),
              ),
              SizedBox(height: 30.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: SizedBox(
                  width: double.infinity,
                  height: 45.h,
                  child: ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorsApp.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(12.r), // Radius circular 12
                      ),
                    ),
                    child: TextHelper(
                      text: "Daftar",
                      fontSize: 20.sp,
                      fontFamily: FontFamily.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12.w),
                child: TextDivider.horizontal(
                    color: ColorsApp.blurprimary,
                    thickness: 2,
                    indent: 1,
                    endIndent: 2,
                    text: const Text(
                      'atau',
                      style: TextStyle(color: ColorsApp.textgrey),
                    )),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildContainer('assets/images/google.png', 30.w, 30.h),
                      SizedBox(width: 8.w),
                      _buildContainer('assets/images/facebook.png', 35.w, 35.h),
                      SizedBox(width: 8.w),
                      _buildContainer('assets/images/twitter.png', 35.w, 35.h),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        width: double.infinity,
        child: ListView(
          shrinkWrap: true,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextHelper(
                  text: 'Sudah punya akun? ',
                  fontSize: 16.sp,
                  textAlign: TextAlign.center,
                  fontColor: ColorsApp.textgrey,
                ),
                TextHelper(
                  text: ' Masuk',
                  fontSize: 16.sp,
                  textAlign: TextAlign.center,
                  fontFamily: FontFamily.bold,
                  fontColor: ColorsApp.primary,
                ),
                SizedBox(height: 20.h)
              ],
            ),
            SizedBox(height: 20.h)
          ],
        ),
      ),
    );
  }
}

Widget _buildContainer(String imagePath, double width, double height) {
  return Container(
    width: 60.w,
    height: 50.h,
    decoration: BoxDecoration(
      border: Border.all(
        color: ColorsApp.blurprimary,
        width: 2.w,
      ),
      borderRadius: BorderRadius.circular(12.r),
    ),
    child: FittedBox(
      fit: BoxFit.scaleDown,
      child: Image.asset(
        imagePath,
        width: width,
        height: height,
      ),
    ),
  );
}
