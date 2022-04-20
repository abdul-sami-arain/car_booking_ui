import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.h,
      width: double.infinity,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                    width: 82.w,
                    height: 65.h,
                    child: Image.asset("assets/home.png",
                    height:24.h,
                    width: 24.w,
                    ),
                  ),

                  Container(
                    width: 82.w,
                    height: 65.h,
                    child: Image.asset("assets/hires.png",
                    height:24.h,
                    width: 24.w,
                    ),
                  ),
          ],
        ),
      );
  }
}