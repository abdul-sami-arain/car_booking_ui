import 'package:carservice/constants/screenHeading.dart';
import 'package:carservice/features/widgets/SearchBar.dart';
import 'package:carservice/features/widgets/availableVehicles.dart';
import 'package:carservice/features/widgets/bottomNav.dart';
import 'package:carservice/features/widgets/rowSlider.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        appBar:AppBar(
          backgroundColor: Colors.white,
          leadingWidth: 100.w,
          leading: Padding(
            padding:  EdgeInsets.only(left: 21.w),
            child: Image.asset("assets/logo.png",),
          ),
        
          title: ScreenHeading(heading: "Home"),
          centerTitle: true,
          actions: [
            Stack(
               fit: StackFit.passthrough,
              children: [
               Icon(Icons.notifications_outlined,
               color: HexColor("#718096"),
               ) ,
               Positioned(
                  top: 20.h, 
                  left: 15.w, 
                // right: 120, 
                 child: Container(
                   width: 9.w,
                   height: 9.h,
                   decoration:  BoxDecoration(
                     borderRadius: BorderRadius.circular(30),  
                     color: Colors.red,
                   ),
                 ),
               ),     
              ],
            ),
              SizedBox(width: 22.w,),
               Container(
              width: 39.w,
              height:39.h,
              child: CircleAvatar(
                child: Image.asset("assets/profile.png"),
            ),
            ),
            SizedBox(width: 21.w,),
          ],
        ),
        body: CustomScrollView( 
          slivers: [
            SliverFillRemaining(
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
 Search(),
                    RowSlider(),
                    SizedBox(height: 40.h,),      
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal:21.w),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Available vehicles", style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500),),
                          ],
                        ),
                      ),
                    SizedBox(height: 40.h,),      
                    AvailableVehicles(),
                        ],
                      ),
                      )
                    ),
                    BottomBar(),
                ],
              ),
            )
          ],
        )
         ),
    );
  }
}

