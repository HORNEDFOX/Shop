import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop/pages/catalog.dart';
import 'package:shop/pages/profile.dart';
import 'package:shop/theme/colors.dart' as colors;

import 'buy.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  TextStyle optionStyle = const TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final List<Widget> _widgetOptions = <Widget>[
    Catalog(),
    Buy(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/images/home.svg",  color: _selectedIndex == 0 ? colors.plainOcean : colors.grey,),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/images/shopping-bag.svg",  color: _selectedIndex == 1 ? colors.plainOcean : colors.grey,),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/images/user.svg",  color: _selectedIndex == 2 ? colors.plainOcean : colors.grey,),
            label: "",
          ),
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        selectedItemColor: colors.plainOcean,
        onTap: _onItemTapped,
        elevation: 2,
      ),
    );
  }
}
