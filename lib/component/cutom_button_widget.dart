import 'package:digital_wallet/data/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyButton extends StatefulWidget {
  final String title;
  final Color _color;
  int index;
  MyButton(this.title, this._color, this.index);

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: widget._color,
        ),
        padding: EdgeInsets.only(left: 10.w, top: 4.h, right: 10.w),
        height: 40.h,
        width: 80.w,
        child: Center(
          child: Text(
            widget.title,
            style: widget.index == 0 ? kButtonTextStyle : kButton2TextStyle,
          ),
        ),
      ),
    );
  }
}
