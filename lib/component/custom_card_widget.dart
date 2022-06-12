import 'package:digital_wallet/data/colors.dart';
import 'package:digital_wallet/data/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCard extends StatefulWidget {
  int index;
  MyCard({Key? key, required this.index}) : super(key: key);

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    int odd = widget.index;

    return Padding(
      padding: EdgeInsets.only(left: 20.w),
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.r)),
        color: odd % 2 == 0 ? kFirstCardColor : kSecondCardColor,
        child: Container(
          padding: EdgeInsets.only(left: 20.w, top: 10.h),
          height: 230.h,
          width: 200.w,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                  print(isSwitched);
                });
              },
              activeTrackColor: Colors.grey,
              activeColor: odd % 2 == 0 ? kFirstCardColor : kSecondCardColor,
            ),
            Text(
              'CARD NUMBER',
              style: kcardTextStyle,
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              '3829  4820',
              style: kcardTextStyle,
            ),
            const Spacer(),
            Text(
              'Ghulam',
              style: kcardTextStyle,
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              height: 3.h,
            )
          ]),
        ),
      ),
    );
  }
}
