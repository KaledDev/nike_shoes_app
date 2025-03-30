import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nike_shoes_app/screens/cart_screen.dart';
import 'package:nike_shoes_app/screens/shop_screen.dart';
import 'package:nike_shoes_app/component/nav.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [const ShopScreen(), const CartScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.grey[300]),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: SafeArea(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 40),
                child: SvgPicture.asset(
                  'assets/images/logo_image.svg',
                  // ignore: deprecated_member_use
                  color: Colors.white,
                  width: 60,
                  height: 60,
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.fromLTRB(40, 50, 0, 0),
                leading: Icon(Icons.home, color: Colors.white,),
                title: Text('Home', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                onTap: () {},
              ),
              ListTile(
                contentPadding: EdgeInsets.fromLTRB(40, 16, 0, 0),
                leading: Icon(Icons.info, color: Colors.white,),
                title: Text('About', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: MyNav(
        onTabChange: (index) => navigateBottomBar(index),
      ),
    );
  }
}
