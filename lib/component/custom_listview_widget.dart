import 'package:digital_wallet/data/colors.dart';
import 'package:digital_wallet/data/typography.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyListViewWidget extends StatelessWidget {
  const MyListViewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        ListTile(
            leading: const Icon(
              FontAwesomeIcons.spotify,
              color: kIconColor,
            ),
            title: Text(
              'Spotify',
              style: kTitleTextStyle,
            ),
            subtitle: Text(
              'May 20 ,3:41 pm',
              style: kSubTitleTextStyle,
            ),
            trailing: Text(
              '-\$15.00',
              style: kTitleTextStyle,
            )),
        ListTile(
            leading: const Icon(
              FontAwesomeIcons.bowlFood,
              color: kIconColor,
            ),
            title: Text('Grocery', style: kTitleTextStyle),
            subtitle: Text(
              'May 20 ,3:41 pm',
              style: kSubTitleTextStyle,
            ),
            trailing: Text(
              '-\$150.00',
              style: kTitleTextStyle,
            )),
        ListTile(
            leading: const Icon(
              FontAwesomeIcons.seedling,
              color: kIconColor,
            ),
            title: Text('seedling', style: kTitleTextStyle),
            subtitle: Text(
              'May 20 ,3:41 pm',
              style: kSubTitleTextStyle,
            ),
            trailing: Text(
              '-\$15.00',
              style: kTitleTextStyle,
            )),
        ListTile(
            leading: const Icon(
              FontAwesomeIcons.egg,
              color: kIconColor,
            ),
            title: Text('Egg', style: kTitleTextStyle),
            subtitle: Text(
              'May 10 ,3:30 Am',
              style: kSubTitleTextStyle,
            ),
            trailing: Text(
              '-\$20.00',
              style: kTitleTextStyle,
            )),
        ListTile(
            leading: const Icon(
              FontAwesomeIcons.spotify,
              color: kIconColor,
            ),
            title: Text(
              'Spotify',
              style: kTitleTextStyle,
            ),
            subtitle: Text(
              'May 20 ,3:41 pm',
              style: kSubTitleTextStyle,
            ),
            trailing: Text(
              '-\$15.00',
              style: kTitleTextStyle,
            )),
        ListTile(
            leading: const Icon(
              FontAwesomeIcons.bowlFood,
              color: kIconColor,
            ),
            title: Text('Grocery', style: kTitleTextStyle),
            subtitle: Text(
              'May 20 ,3:41 pm',
              style: kSubTitleTextStyle,
            ),
            trailing: Text(
              '-\$150.00',
              style: kTitleTextStyle,
            )),
        ListTile(
            leading: const Icon(
              FontAwesomeIcons.seedling,
              color: kIconColor,
            ),
            title: Text('seedling', style: kTitleTextStyle),
            subtitle: Text(
              'May 20 ,3:41 pm',
              style: kSubTitleTextStyle,
            ),
            trailing: Text(
              '-\$15.00',
              style: kTitleTextStyle,
            )),
        ListTile(
            leading: const Icon(
              FontAwesomeIcons.egg,
              color: kIconColor,
            ),
            title: Text('Egg', style: kTitleTextStyle),
            subtitle: Text(
              'May 10 ,3:30 Am',
              style: kSubTitleTextStyle,
            ),
            trailing: Text(
              '-\$20.00',
              style: kTitleTextStyle,
            )),
      ],
    ));
  }
}
