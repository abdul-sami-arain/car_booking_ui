// ignore_for_file: deprecated_member_use

import 'package:carservice/constants/screenHeading.dart';
import 'package:carservice/features/widgets/SearchBar.dart';
import 'package:carservice/features/widgets/rowSlider.dart';
import 'package:carservice/features/widgets/specifications.dart';
import 'package:carservice/model/model.dart';
import 'package:carservice/state/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

class CarDetails extends StatelessWidget {
  const CarDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var state = Provider.of<AppState>((context), listen: true);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: HexColor("#E5E5E5"),
          appBar: AppBar(
              backgroundColor: Colors.white,
              title: ScreenHeading(heading: "Properties"),
              centerTitle: true,
              leading: GestureDetector(
                child: Icon(
                  Icons.arrow_back,
                  color: HexColor("#374151"),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              )),
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 24.h, bottom: 12.h),
                  child: Container(
                    width: 372.w,
                    height: 250.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(state.mainImage.toString()),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 21.w),
                  child: SizedBox(
                    height: 70.h,
                    child: Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        primary: false,
                        scrollDirection: Axis.horizontal,
                        itemCount: state.subImages.length,
                        itemBuilder: (BuildContext context, int index) =>
                            Padding(
                          padding: EdgeInsets.only(right: 10.w),
                          child: Card(
                            color: Colors.grey,
                            child: Center(
                                child: GestureDetector(
                                    onTap: () {
                                      state.mainImage =
                                          state.subImages[index].toString();
                                      Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => CarDetails()),
                                        (Route<dynamic> route) => false,
                                      );
                                    },
                                    child: Container(
                                      width: 70.w,
                                      height: 70.h,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: DecorationImage(
                                            image: AssetImage(
                                              state.subImages[index],
                                            ),
                                            fit: BoxFit.fill,
                                          )),
                                    ))),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 21.h),
                  child: SizedBox(
                    width: double.infinity,
                    height: 1.h,
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 21.w),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              state.heading.toString(),
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 20.sp, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Row(
                          children: [
                            Text(
                              "\$" + state.price.toString(),
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
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 21.h),
                  child: SizedBox(
                    width: double.infinity,
                    height: 1.h,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                CarSpecifications(),
                Padding(
                    padding: EdgeInsets.only(top: 37.h, bottom: 21.h),
                    child: Container(
                        height: 48.h,
                        width: 372.w,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Rent this Car",
                            style: TextStyle(
                                fontSize: 17.sp, fontWeight: FontWeight.w500),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(HexColor("#057A55")),
                          ),
                        ))),
                Container(
                  height: 34.h,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.white),
                )
              ],
            ),
          ),
        bottomNavigationBar: BottomAppBar(),
          ),
    );
    
  }
}
