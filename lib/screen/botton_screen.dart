import 'package:flutter/material.dart';
import 'package:flutter_cookie_store_ui/screen/categorie_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class ButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> _buildScreens() {
      return [
        CategoriesScreen(),
        CategoriesScreen(),
        CategoriesScreen(),
        CategoriesScreen(),
        CategoriesScreen()
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: Icon(
            Icons.shopping_bag_outlined,
            color: Colors.orange[800],
          ),
        ),
        PersistentBottomNavBarItem(
          icon: Icon(
            Icons.search,
            color: Colors.orange[800],
          ),
        ),
        PersistentBottomNavBarItem(
          icon: Icon(
            Icons.fastfood,
            color: Colors.white,
          ),
          activeColorPrimary: Color(0xFFEF6C00),
        ),
        PersistentBottomNavBarItem(
          icon: Icon(
            Icons.person,
            color: Colors.orange[800],
          ),
        ),
        PersistentBottomNavBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.orange[800],
          ),
        ),
      ];
    }

    PersistentTabController _controller;

    _controller = PersistentTabController(initialIndex: 0);
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,

      // Default is Colors.white.
      handleAndroidBackButtonPress: true,
      // Default is true.
      resizeToAvoidBottomInset: true,
      // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true,
      // Default is true.
      hideNavigationBarWhenKeyboardShows: true,
      // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(25),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style15,
      // Choose the nav bar style with this property.
    );
  }
}
