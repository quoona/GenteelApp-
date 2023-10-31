import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonSubmit extends StatefulWidget {
  final String text;
  final double width;
  final TextStyle? textStyle;
  final String iconPath;
  const ButtonSubmit({
    Key? key,
    required this.width,
    required this.text,
    this.textStyle,
    required this.iconPath,
  }) : super(key: key);

  @override
  State<ButtonSubmit> createState() => _ButtonSubmitState();
}

class _ButtonSubmitState extends State<ButtonSubmit> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          fixedSize: Size(
            widget.width,
            widget.width * 50 / 335,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.r),
          ),
          elevation: 0.0,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          padding: EdgeInsets.zero,
          backgroundColor: Colors.white),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 13.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(widget.iconPath),
            Text(
              widget.text,
              style: widget.textStyle ??
                  GoogleFonts.lora(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF090A0A),
                  ),
              textAlign: TextAlign.center,
            ),
            SizedBox(),
          ],
        ),
      ),
    );
  }
}
