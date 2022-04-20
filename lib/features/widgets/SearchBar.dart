import 'package:carservice/constants/screenHeading.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class Search extends StatelessWidget {
  const Search({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical: 20.h),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 21.w),
          child: Row(
            children: [
              SizedBox(
                width: 276.w,
                height:60.h,
                child: TextField(
                  style:new TextStyle(
                    fontSize: 22.0.sp,
                     color: Color(0xFFbdc6cf),
                     ),              
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search,),
                    fillColor: Colors.white,
                    filled: true,
                  enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                          border: OutlineInputBorder(
                            
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          hintText: "Search for a car ",
                          hintStyle: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black
                          ),
                          contentPadding: EdgeInsets.only(bottom:50.h,top: 19.h,left: 24.w),
                        ),
                )
                ),
                SizedBox(width: 26.w,),
                Container(
                  width: 60.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.widgets,color: Colors.grey,size: 16.sp,),
                ),
            ],
          ),
        ),
      )
    );
  }
}