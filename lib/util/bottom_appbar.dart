import 'package:design_pacm/screens/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

  }


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(

      items: [

        BottomNavigationBarItem(
          label: "",
          icon: Image.asset(
            "assets/images/Home.png"
            //color: Colors.black,
          ),

          // color: Colors.black,
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Image.asset(
            "assets/images/Sites.png",
            //color: Colors.black,
          ),
        ),

        BottomNavigationBarItem(
          label: "",
          icon: Image.asset(
            "assets/images/Entries.png",
            //color: Colors.black,
          ),
        ),

        BottomNavigationBarItem(
          label: "",
          icon: Image.asset(
            "assets/images/Settings.png",
           // color: Colors.black,
          ),
        ),


      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.red,
      onTap: _onItemTapped,

    );
  }
}

