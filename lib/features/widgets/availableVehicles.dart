import 'package:carservice/constants/screenHeading.dart';
import 'package:carservice/features/widgets/SearchBar.dart';
import 'package:carservice/features/widgets/rowSlider.dart';
import 'package:carservice/features/carDetails.dart';
import 'package:carservice/model/model.dart';
import 'package:carservice/state/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

class AvailableVehicles extends StatelessWidget {
  const AvailableVehicles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var state = Provider.of<AppState>((context), listen: true);
    return
        SingleChildScrollView(
          child: Expanded(
            child: ListView.builder(
              shrinkWrap: true,
                  primary: false,
              itemCount: content1.length,
              itemBuilder: (context,index){
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 37.w),
                      child: GestureDetector(
                        onTap: () {
                          state.show(content1[index].image, content1[index].images,
                            content1[index].heading, content1[index].price, {
                          "Make": content1[index].specifications['Make'].toString(),
                          "MODEL": content1[index].specifications["MODEL"],
                          "YEAR": content1[index].specifications['YEAR'].toString(),
                          "MILEAGE": content1[index].specifications['MILEAGE'],
                          "TRANSMISSION":
                              content1[index].specifications['TRANSMISSION'],
                          "COLOR": content1[index].specifications['COLOR'],
                          'HEX':content1[index].specifications['HEX'],
                          "NO_OF_DOORS": content1[index]
                              .specifications['NO_OF_DOORS']
                              .toString()
                        });
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => CarDetails()));
                        print(content1[index].specifications);
                        },
                        child: Row(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(left: 0.w),
                              child: Container(
                                      height: 93.h,
                                      width: 93.w,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          image: DecorationImage(
                                            image: AssetImage(
                                              content1[index].image,
                                            ),
                                            fit: BoxFit.fill,
                                          )
                                          ),
                                      
                                    ),
                            ),
                            SizedBox(
                              width: 19.w,
                            ),
                            SizedBox(
                                width: 240.w,
                                child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        content1[index].heading,
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                            fontSize: 20.sp,
                                            letterSpacing: 1,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Text(
                                        content1[index].description,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            letterSpacing: 1,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            
                                            children: [
                                              Text(
                                                "\$" + content1[index].price.toString(),
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    color: Color(0xff057A55),
                                                    fontSize: 18.sp,
                                                    fontWeight: FontWeight.w700),
                                              ),
                                              Text(
                                                "/month",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 12.sp,
                                                    fontWeight: FontWeight.w400),
                                              )
                                            ],
                                          ),
                                          
                                          Icon(
                                            Icons.arrow_forward,
                                            color: Color(0xffD2D6DC),
                                          )
                                        ],
                                      ),
                                    ]),
                              ),
                              //                         
                          ],
                        ),
                      ),
                    ),
                     Padding(
                       padding:  EdgeInsets.only(left: 37.w,right: 21.w,top: 19.h,bottom: 19.h),
                       child: Container(
                        color: Color(0xffD2D6DC),
                        height: 1.h,
                    ),
                     ),
                  ],
                );
              }),
          ),
        );
  }
}
