import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class SpecValue extends StatelessWidget {
  const SpecValue({Key? key,required this.specvalue}) : super(key: key);
  final specvalue;
  @override
  Widget build(BuildContext context) {
    return Text("$specvalue",
        style: TextStyle(
            fontSize: 15.sp,
            letterSpacing: 0.5,
            fontWeight: FontWeight.w700,
            color: Color(0xff161E2E)));
  }
}
