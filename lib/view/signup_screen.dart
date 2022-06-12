import 'package:digital_wallet/data/colors.dart';
import 'package:digital_wallet/data/images_path.dart';
import 'package:digital_wallet/data/typography.dart';
import 'package:digital_wallet/view/home_screen.dart';
import 'package:digital_wallet/view/navigationbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(left: 25.w),
            child: InkWell(
              onTap: () {
                Get.to(() => (NavigationBarScreen()));
              },
              child: SizedBox(
                width: 160.w,
                height: 100.h,
                child: Text(
                  'Set your Finacial Goals',
                  style: kHeadingTextStyle,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.w),
            child: SizedBox(
              width: 240.w,
              height: 50.h,
              child: Text(
                'Our smart finance app will keep you record stats and track',
                style: kSubHeadingTextStyle,
              ),
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          Expanded(
              child: Stack(
            children: [
              Positioned(
                right: -90.w,
                bottom: -94.h,
                child: SizedBox(
                    width: 350.w,
                    height: 310.h,
                    child: SvgPicture.asset(kCircleRingLogosvg)),
              ),
            ],
          )),
        ]),
      ),
    );
  }
}
