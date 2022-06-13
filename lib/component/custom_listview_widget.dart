import 'package:digital_wallet/data/colors.dart';
import 'package:digital_wallet/data/typography.dart';
import 'package:digital_wallet/model/listview.dart';
import 'package:flutter/material.dart';

class MyListViewWidget extends StatelessWidget {
  MyListView myListView;
  MyListViewWidget({Key? key, required this.myListView}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Icon(
          myListView.iconData,
          color: kIconColor,
        ),
        title: Text(
          myListView.title,
          style: kTitleTextStyle,
        ),
        subtitle: Text(
          myListView.subTitle,
          style: kSubTitleTextStyle,
        ),
        trailing: Text(
          myListView.traling,
          style: kTitleTextStyle,
        ));
  }
}
