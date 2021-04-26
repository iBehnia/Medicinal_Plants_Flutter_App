import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:medical_plants/Screens/NotificationPage/NotifocationPage.dart';
import 'package:medical_plants/Screens/ReprotPages/ReportStep1Page.dart';
import 'package:medical_plants/Screens/Settings/SettingsPage.dart';
import 'package:medical_plants/Screens/UserProfile/UserProfilePageTabBar.dart';
import 'package:medical_plants/Themes/MyColors.dart';
import 'package:medical_plants/Themes/Theme.dart';

import '../Screens/HomePage/HomePage.dart';
import '../Screens/LoginRegister/LogInOutPageTabBar.dart';

//import 'package:persistent_bottom_nav_bar/nav-bar-styles/style-16-bottom-nav-bar.widget.dart';

import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

PersistentTabController _controller = PersistentTabController(initialIndex: 0);

class MyBottomNavigator extends StatelessWidget {
  const MyBottomNavigator({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white, // Default is Colors.white.
        handleAndroidBackButtonPress: true, // Default is true.
        resizeToAvoidBottomInset:
            true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
        stateManagement: true, // Default is true.
        hideNavigationBarWhenKeyboardShows:
            true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
        decoration: NavBarDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
            ),
          ],
          borderRadius: BorderRadius.circular(18.0),
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
        navBarStyle:
            NavBarStyle.style16, // Choose the nav bar style with this property.
      ),
    );
  }

  List<Widget> _buildScreens() {
    return [
      HomePage(),
      UserProfilePageTabBar(),
      ReportStep1Page(),
      NotificationPage(),
      SettingsPage(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        inactiveIcon: SvgPicture.asset(
          'Assets/Icons/BottomNavigator/InActiveIcons/InHome.svg',
        ),
        icon: SvgPicture.asset(
          'Assets/Icons/BottomNavigator/ActiveIcons/Home.svg',
        ),
        //title: ('Home'),
      ),
      PersistentBottomNavBarItem(
        inactiveIcon: SvgPicture.asset(
          'Assets/Icons/BottomNavigator/InActiveIcons/Profile.svg',
        ),
        icon: SvgPicture.asset(
          'Assets/Icons/BottomNavigator/ActiveIcons/Profile.svg',
        ),
        //title: ('Profile'),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.add,
          color: kBackGroundColor,
        ),
        activeColorPrimary: CupertinoColors.activeGreen,
        inactiveColorPrimary: CupertinoColors.systemGrey,
        // title: ('Report'),
      ),
      PersistentBottomNavBarItem(
        inactiveIcon: SvgPicture.asset(
          'Assets/Icons/BottomNavigator/InActiveIcons/Notification.svg',
        ),
        icon: SvgPicture.asset(
          'Assets/Icons/BottomNavigator/ActiveIcons/Notification.svg',
        ),
        // title: ('Notification'),
      ),
      PersistentBottomNavBarItem(
        inactiveIcon: SvgPicture.asset(
          'Assets/Icons/BottomNavigator/InActiveIcons/Setting.svg',
        ),
        icon: SvgPicture.asset(
          'Assets/Icons/BottomNavigator/ActiveIcons/Setting.svg',
        ),
        // title: ('Setting'),
      ),
    ];
  }
}
