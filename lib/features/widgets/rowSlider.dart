import 'package:carservice/constants/screenHeading.dart';
import 'package:carservice/model/model.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class RowSlider extends StatelessWidget {
  const RowSlider({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: contents.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 21),
              child: Stack(
                children: [
                  Container(
                    width: 120.w,
                    height: 200.h,
                    decoration: BoxDecoration(
                      color:contents[index].bgcolor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding:  EdgeInsets.only(top: 94.h,bottom: 18.h),
                      child: ListTile(  
                        title: Text(contents[index].description.toString(),
                        textAlign: TextAlign.center,
                                  style:TextStyle(
                                    color:contents[index].textColor,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400
                                  ),),
                        subtitle: Text(contents[index].number.toString(),
                        textAlign: TextAlign.center,
                                  style:TextStyle(
                                    color:contents[index].numberColor,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600
                                  ),
                                  ) ,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 8,
                    left: -35,
                    child: Image.asset(contents[index].image,),
                    width: 151,
                    height: 86,
                  )
                ],
                clipBehavior: Clip.none,
              ),
            );
          }),
    );


  }
}
