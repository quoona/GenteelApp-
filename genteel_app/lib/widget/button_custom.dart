import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonCustom extends StatefulWidget {
  final String iconPath;
  final String text;
  const ButtonCustom({
    super.key,
    required this.iconPath,
    required this.text,
  });

  @override
  State<ButtonCustom> createState() => _ButtonCustomState();
}

class _ButtonCustomState extends State<ButtonCustom> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          fixedSize: Size(
            335.w,
            50.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              4.r,
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.white),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 13.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(
              widget.iconPath,
              width: 24.w,
            ),
            SizedBox(
              width: 50.w,
            ),
            Text(
              widget.text,
              style: GoogleFonts.nunito(
                color: Color(
                  0xFF090A0A,
                ),
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
