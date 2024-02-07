import 'package:flutter/material.dart';
import 'package:project_subject/Screens/Home.dart';
import 'package:project_subject/Screens/cart.dart';
import '../constants.dart';
import 'profile.dart';

// ignore: must_be_immutable
class ScreenWork extends StatelessWidget {
  final PageController _pageController = PageController();
  int currentpage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (index) {},
        controller: _pageController,
        children: <Widget>[
          Home(),
          Cart(),
          Profile(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            // ignore: unused_element
            print("asdfsadfasdf    $index");
            _pageController.jumpToPage(index);
            currentpage = index;
            setState() {
              currentpage = index;
            }
          },
          backgroundColor: kBottomContainerColor,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 40,
                  color: currentpage == 0
                      ? kPressedColorBotton
                      : knonPressedColorBotton,
                ),
                label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_shopping_cart,
                size: 40,
                color: currentpage == 1
                    ? kPressedColorBotton
                    : knonPressedColorBotton,
              ),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_box,
                size: 40,
                color: currentpage == 2
                    ? kPressedColorBotton
                    : knonPressedColorBotton,
              ),
              label: "Account",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.menu,
                size: 40,
                color: currentpage == 3
                    ? kPressedColorBotton
                    : knonPressedColorBotton,
              ),
              label: "Menu",
            ),
          ]),
    );
  }
}
