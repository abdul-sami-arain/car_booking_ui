import 'package:carservice/constants/speConstant.dart';
import 'package:carservice/constants/specValue.dart';
import 'package:carservice/state/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

class CarSpecifications extends StatelessWidget {
  const CarSpecifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var state = Provider.of<AppState>((context), listen: true);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.only(left: 21.w,top: 21,bottom: 21),
              child: Text("Car Specifications",
               style: TextStyle(
                 fontSize: 22.sp,
                 color: Colors.black,
                 fontWeight: FontWeight.bold
               ),
              ),
            ),
          ],
        ),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 21.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [   
                Container(
                  width: 173.w,
                  height: 89.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Padding(
                    padding:  EdgeInsets.only(left:16.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SpeHeading(specHeading: "MAKE"),
                        SizedBox(height: 12.h,),
                        SpecValue(specvalue: "${state.Specifications['Make']}")
                      ],
                    ),
                  ),
                ),
              
              
                 Container(
                  width: 173.w,
                  height: 89.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Padding(
                    padding:  EdgeInsets.only(left:16.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SpeHeading(specHeading: "MODEL"),
                        SizedBox(height: 12.h,),
                        SpecValue(specvalue: "${state.Specifications['MODEL']}")
                      ],           
                ),
                  ),
              ),
            ],
          ),
        ),
        SizedBox(height: 28.h,),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 21.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [   
                Container(
                  width: 173.w,
                  height: 89.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Padding(
                    padding:  EdgeInsets.only(left:16.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SpeHeading(specHeading: "YEAR"),
                        SizedBox(height: 12.h,),
                        SpecValue(specvalue: "${state.Specifications['YEAR']}")
                      ],
                    ),
                  ),
                ),
              
              
                 Container(
                  width: 173.w,
                  height: 89.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Padding(
                    padding:  EdgeInsets.only(left:16.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SpeHeading(specHeading: "MILEAGE"),
                        SizedBox(height: 12.h,),
                        SpecValue(specvalue: "${state.Specifications['MILEAGE']}")
                      ],           
                ),
                  ),
              ),
            ],
          ),
        ),
        SizedBox(height: 28.h,),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 21.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [   
                Container(
                  width: 173.w,
                  height: 89.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Padding(
                    padding:  EdgeInsets.only(left:16.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SpeHeading(specHeading: "TRANSMISSION"),
                        SizedBox(height: 12.h,),
                        SpecValue(specvalue: "${state.Specifications['TRANSMISSION']}")
                      ],
                    ),
                  ),
                ),
              
              
                 Container(
                  width: 173.w,
                  height: 89.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Padding(
                    padding:  EdgeInsets.only(left:16.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SpeHeading(specHeading: "COLOR"),
                        SizedBox(height: 12.h,),
                        Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 17.h,
                          height: 17.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              color:
                                  HexColor("${state.Specifications['HEX'].toString()}")),
                        ),
                        SizedBox(width: 10.w,),
                        SpecValue(specvalue: "${state.Specifications['COLOR']}")
                      ],
                    )
                      ],           
                ),
                  ),
              ),
            ],
          ),
        ),
        SizedBox(height: 28.h,),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal:21.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                        width: 173.w,
                        height: 89.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Padding(
                          padding:  EdgeInsets.only(left:16.w),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SpeHeading(specHeading: "NO OF DOORS"),
                              SizedBox(height: 12.h,),
                              SpecValue(specvalue: "${state.Specifications['NO_OF_DOORS']}")
                            ],           
                      ),
                        ),
                    ),
            ],
          ),
        ),
      ],
    );
  }
}

