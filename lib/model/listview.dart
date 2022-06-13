import 'package:digital_wallet/data/icondata.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../data/colors.dart';

class MyListView {
  IconData iconData;
  String title;
  String subTitle;
  String traling;
  MyListView(
    this.iconData,
    this.title,
    this.subTitle,
    this.traling,
  );
}

List<MyListView> myList = [
  MyListView(kSpotifyIcon, 'Spotify', 'May 20 ,3:41 pm', '-\$15.00'),
  MyListView(kBowlFoodIcon, 'Grocery', 'May 20 ,3:41 pm', '-\$150.00'),
  MyListView(kSeedlingIcon, 'seedling', 'May 20 ,3:41 pm', '-\$15.00'),
  MyListView(kEggIcon, 'Egg', 'May 10 ,3:30 Am', '-\$20.00'),
  MyListView(kSpotifyIcon, 'Spotify', 'May 20 ,3:41 pm', '-\$15.00'),
  MyListView(kBowlFoodIcon, 'Grocery', 'May 20 ,3:41 pm', '-\$150.00'),
  MyListView(kSeedlingIcon, 'seedling', 'May 20 ,3:41 pm', '-\$15.00'),
  MyListView(kEggIcon, 'Egg', 'May 10 ,3:30 Am', '-\$20.00'),
];
