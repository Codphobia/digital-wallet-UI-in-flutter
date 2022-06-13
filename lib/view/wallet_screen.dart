import 'package:digital_wallet/component/custom_analysis_bar_widget.dart';
import 'package:digital_wallet/component/cutom_button_widget.dart';
import 'package:digital_wallet/component/cutom_syncfussionbar_widget.dart';
import 'package:digital_wallet/data/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../data/colors.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackgroundColor,
      child: SafeArea(
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
                    FontAwesomeIcons.wallet,
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
              height: 25.h,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              MyButton('Week', kButtonColor, 0),
              MyButton('Month', kButonTextColor, 1),
              MyButton('Year', kButonTextColor, 2),
            ]),
            SizedBox(
              height: 25.h,
            ),
            SizedBox(height: 200.h, child: SyncFussionBar()),
            SizedBox(
              height: 25.h,
            ),
            Expanded(
                child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Expense',
                            style: kTitleTextStyle,
                          ),
                          SizedBox(
                            height: 100.h,
                            child: const ShortBar(),
                          ),
                          Text(
                            '\$200',
                            style: kTitleTextStyle,
                          )
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Incoms',
                            style: kTitleTextStyle,
                          ),
                          SizedBox(
                            height: 100.h,
                            child: const ShortBar(),
                          ),
                          Text(
                            '-\$1500',
                            style: kTitleTextStyle,
                          )
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Expense',
                            style: kTitleTextStyle,
                          ),
                          SizedBox(
                            height: 100.h,
                            child: const ShortBar(),
                          ),
                          Text(
                            '\$200',
                            style: kTitleTextStyle,
                          )
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Incoms',
                            style: kTitleTextStyle,
                          ),
                          SizedBox(
                            height: 100.h,
                            child: const ShortBar(),
                          ),
                          Text(
                            '-\$1500',
                            style: kTitleTextStyle,
                          )
                        ]),
                  ],
                )
              ],
            ))
          ]),
        ),
      ),
    );
  }
}
