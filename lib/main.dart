import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        title: 'Hello',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: GoogleFonts.nunitoTextTheme(
              Theme.of(context).textTheme,
            )),
        debugShowCheckedModeBanner: false,
        home: DashboardPage(),
      ),
      designSize: const Size(360, 640),
    );
  }
}

class DashboardPage extends StatelessWidget {
  final buttonColor = Color(0xffF2796B);
  final bodyBackground = Color(0xffE5E5E5);
  final subtextColor = Color(0xff5B5B5B);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                // color: bodyBackground,
                // borderRadius: BorderRadius.only(
                //   bottomRight: Radius.circular(40.r),
                //   bottomLeft: Radius.circular(40.r),
                // ),
                ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 12.h,
                  ),
                  Wrap(
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 18.sp),
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      Icon(Icons.login_outlined),
                    ],
                  ),
                  Text(
                    'Welcome back , Rohit thakur',
                    style: TextStyle(color: subtextColor),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 20.h,
                          ),
                          Container(
                            width: 296.w,
                            height: 200.h,
                            child: Image.asset('assets/images/img.png'),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Text(
                            'Enter Your Mobile Number',
                            style: TextStyle(
                                color: buttonColor,
                                fontSize: 17.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    height: 43.h,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: buttonColor, width: 1),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: buttonColor, width: 1),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          labelText: 'Enter Number',
                          labelStyle: TextStyle(color: buttonColor)),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Change Number ?',
                        style: TextStyle(color: subtextColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    width: double.infinity,
                    height: 40.h,
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(buttonColor),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Continue',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 35.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 1.sp,
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text('Or Login With'),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 1.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Wrap(
                        children: [
                          Container(
                            height: 20.h,
                            width: 100.w,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/images/g.png'),
                                  Text(
                                    'Google',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ]),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Center(
                    child: Wrap(
                      children: [
                        Text(
                          'You Don’t have an account ?',
                          style:
                              TextStyle(color: subtextColor, fontSize: 12.sp),
                        ),
                        Text(
                          ' Sign up',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12.sp),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
