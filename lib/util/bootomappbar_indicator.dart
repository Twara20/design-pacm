import 'package:custom_line_indicator_bottom_navbar/custom_line_indicator_bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomIndicator extends StatefulWidget {
  @override
  _BottomIndicatorState createState() => _BottomIndicatorState();
}

class _BottomIndicatorState extends State<BottomIndicator> {
  int _selectedIndex = 0; //default index

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: CustomLineIndicatorBottomNavbar(
        selectedColor: Colors.purple,
        unSelectedColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        enableLineIndicator: true,
        lineIndicatorWidth: 3,
        indicatorType: IndicatorType.Top,
        customBottomBarItems: [
          CustomBottomBarItems(
            label: 'Home',
            icon: Icons.home_outlined,
          ),
          CustomBottomBarItems(
            label: 'Projects',
            icon: Icons.location_on_outlined,
          ),
          CustomBottomBarItems(
              label: 'Entries', icon: Icons.event_note_rounded),
          CustomBottomBarItems(
            label: 'Settings',
            icon: Icons.settings,
          ),
        ],
      ),
    );
  }
}
