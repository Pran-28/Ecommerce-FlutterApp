

import 'package:ecommerce_app/views/buyers/screens/account_screen.dart';
import 'package:ecommerce_app/views/buyers/screens/cart_screen.dart';
import 'package:ecommerce_app/views/buyers/screens/category_screen.dart';
import 'package:ecommerce_app/views/buyers/screens/home_screen.dart';
import 'package:ecommerce_app/views/buyers/screens/search_screen.dart';
import 'package:ecommerce_app/views/buyers/screens/store_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _pageIndex = 0;

  List<Widget> pages =[
    HomeScreen(),
    CategoryScreen(),
    StoreScreen(),
    CartScreen(),
    SearchScreen(),
    AccountScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _pageIndex,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.red,
        onTap: (value) {
          setState(() {
            _pageIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, weight: 20,), label: 'Home'),
          BottomNavigationBarItem(icon: SvgPicture.asset("assets/icons/explore.svg",width: 20,), label: 'Category'),
          BottomNavigationBarItem(icon: SvgPicture.asset("assets/icons/shop.svg", width: 20,), label: 'Store'),
          BottomNavigationBarItem(icon: SvgPicture.asset("assets/icons/cart.svg", width: 15,), label: 'Cart'),
          BottomNavigationBarItem(icon: SvgPicture.asset("assets/icons/search.svg", width: 15,), label: 'Search'),
          BottomNavigationBarItem(icon: SvgPicture.asset("assets/icons/account.svg", width: 15,), label: 'Accounts'),
        ],
      ),

      body: pages[_pageIndex],


    );
  }
}
