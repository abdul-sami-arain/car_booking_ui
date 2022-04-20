import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class SpeHeading extends StatelessWidget {
  const SpeHeading({ Key? key ,required this.specHeading }) : super(key: key);
  final String specHeading;
  @override
  Widget build(BuildContext context) {
    return Text(
      "$specHeading",
      style: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        letterSpacing: 2,
        color: Color(0xff6B7280)
      ),
    );
  }
}