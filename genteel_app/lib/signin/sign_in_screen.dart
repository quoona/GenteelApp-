import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:genteel_app/config/app_image.dart';
import 'package:genteel_app/widget/button_submit.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return SignInWrapper();
  }
}

class SignInWrapper extends StatefulWidget {
  const SignInWrapper({
    super.key,
  });

  @override
  State<SignInWrapper> createState() => _SignInWrapperState();
}

class _SignInWrapperState extends State<SignInWrapper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/first_background.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome back Daph',
                  style: GoogleFonts.lora(
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Please log in to continue shopping',
                  style: GoogleFonts.lora(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 52.h,
                ),
                ButtonSubmit(
                  width: 335.w,
                  text: 'Continue with Apple',
                  iconPath: 'assets/apple.png',
                ),
                SizedBox(height: 16.h),
                ButtonSubmit(
                  width: 335.w,
                  text: 'Continue with Google',
                  iconPath: 'assets/google.png',
                ),
                SizedBox(height: 16.h),
                ButtonSubmit(
                  width: 335.w,
                  text: 'Continue with Facebook',
                  iconPath: 'assets/facebook.png',
                ),
                SizedBox(
                  height: 24.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 150.w,
                      height: 1.h,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.w,
                      ),
                      child: Text(
                        'OR',
                        style: GoogleFonts.lora(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      width: 159.w,
                      height: 1.h,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(height: 24.h),
                ButtonSubmit(
                  width: 335.w,
                  text: 'Continue with Email',
                  iconPath: 'assets/email.png',
                ),
                SizedBox(height: 115.h),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t have an account?',
                        style: GoogleFonts.nunito(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        ' Sign up',
                        style: GoogleFonts.nunito(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF78F208),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
