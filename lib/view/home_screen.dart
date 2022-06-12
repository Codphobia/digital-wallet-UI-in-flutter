import 'package:digital_wallet/component/custom_card_widget.dart';
import 'package:digital_wallet/component/custom_listview_widget.dart';
import 'package:digital_wallet/data/colors.dart';
import 'package:digital_wallet/data/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  FontAwesomeIcons.googleWallet,
                  color: kIconColor,
                ),
                Container(
                  height: 30.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(
                      color: kBorderColor,
                      width: 3,
                    ),
                    image: const DecorationImage(
                      image: const NetworkImage(
                          'https://avatars.githubusercontent.com/u/83277996?v=4'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          SizedBox(
            height: 230.h,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return MyCard(index: index);
              },
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          MyListViewWidget()
        ]),
      ),
    );
  }
}
