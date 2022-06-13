import 'package:digital_wallet/data/colors.dart';
import 'package:digital_wallet/data/page_routing.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackgroundColor,
      child: Scaffold(
        body: page[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            elevation: 8,
            backgroundColor: kBackgroundColor,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: kBackgroundColor,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            items: [
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: kIconColor,
                ),
                label: '',
              ),
              const BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.wallet,
                    color: kIconColor,
                  ),
                  label: ' '),
              BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.barsProgress,
                    color: kIconColor,
                  ),
                  label: ' '),
              BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.chartBar,
                    color: kIconColor,
                  ),
                  label: ''),
            ]),
      ),
    );
  }
}
