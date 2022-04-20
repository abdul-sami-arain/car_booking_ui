import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class ScreenHeading extends StatelessWidget {
  ScreenHeading({Key? key,required this.heading}) : super(key: key);
  final String heading;
  @override
  Widget build(BuildContext context) {
    return Text(
      heading,
      style: TextStyle(
        color: HexColor("#374151"),
        fontSize: 18.sp,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
