/*
 * //////////////////////////////////////////////////////////
 * // C O P Y R I G H T (c) 2023                           //
 * // SAIGON MIO JSC. and/or its affiliates.               //
 * // All Rights Reserved                                  //
 * //////////////////////////////////////////////////////////
 * //                                                      //
 * // THIS IS UNPUBLISHED PROPRIETARY SOURCE CODE of       //
 * // SAIGON MIO JSC. and/or its affiliates.               //
 * // The copyright notice above does not evidency any     //
 * // actual or intended publication of such source code.  //
 * //                                                      //
 * //////////////////////////////////////////////////////////
 */

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});
  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return const OnBoardWrapper();
  }
}

class OnBoardWrapper extends StatefulWidget {
  const OnBoardWrapper({
    super.key,
  });

  @override
  State<OnBoardWrapper> createState() => _OnBoardWrapperState();
}

class _OnBoardWrapperState extends State<OnBoardWrapper> {
  @override
  Widget build(BuildContext context) {
    // var screenWidth = MediaQuery.of(context).size.width;
    // var screenHeight = MediaQuery.of(context).size.height;
    return Container(
      // width: screenWidth,
      // height: screenHeight,
      decoration: const BoxDecoration(
        color: Colors.red,
        image: DecorationImage(
          image: AssetImage("assets/splash.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(bottom: 68.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            DefaultTextStyle(
              style: GoogleFonts.prata(),
              child: Text(
                "Genteel",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.sp,
                ),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            DefaultTextStyle(
              style: GoogleFonts.prata(),
              child: Text(
                "Refined Fashion, Genteel Elegance",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                ),
              ),
            ),
            SizedBox(
              height: 55.h,
            ),
            const CircularProgressIndicator(
              color: Color(0xFF96FE37),
              strokeWidth: 5,
            ),
            // Builder(
            //   builder: (context) => IconButton(
            //       icon: const Icon(Icons.play_circle_filled),
            //       iconSize: 50.0,
            //       onPressed: () => {}),
            // ),
          ],
        ),
      ),
    );
  }
}
