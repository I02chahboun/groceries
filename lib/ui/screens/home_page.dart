import 'package:flutter/material.dart';
import 'package:groceries/constants/colors.dart';
import 'package:groceries/ui/screens/account.dart';
import 'package:groceries/ui/screens/explore.dart';
import 'package:groceries/ui/screens/favorurite.dart';
import 'package:groceries/ui/screens/home.dart';
import 'package:groceries/ui/screens/my_cart.dart';
import 'package:mc/mc.dart';


class HomePage extends StatelessWidget {
  final PageController pageController = PageController();
  final ValueNotifier<int> currentPage = ValueNotifier<int>(0);

  HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        bottomNavigationBar: SizedBox(
          height: 75.h,
          width: 414.w,
          child: ValueListenableBuilder(
              valueListenable: currentPage,
              builder: (context, index, __) {
                return BottomNavigationBar(
                    selectedItemColor: green,
                    unselectedItemColor: grey01,
                    iconSize: 20,
                    onTap: (index) {
                      currentPage.value = index;
                      pageController.animateToPage(index,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                    //showSelectedLabels: false,
                    currentIndex: currentPage.value,
                    elevation: 0.0,
                    // backgroundColor: orange,
                    items: [
                      navIcon(
                        "Shop",
                        Icons.shop_two,
                      ),
                      navIcon("Explore", Icons.explore_sharp),
                      navIcon("Cart", Icons.store),
                      navIcon("Favourite", Icons.favorite_border),
                      navIcon("Account", Icons.person),
                    ]);
              }),
        ),
        body: PageView(
          controller: pageController,
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: const [
            Home(),
            Explore(),
            MyCart(),
            Favorurite(),
            Account(),
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem navIcon(String title, IconData icon) {
    return BottomNavigationBarItem(
      backgroundColor: white,
      icon: Icon(
        icon,
      ),
      label: title,
    );
  }
}
