import 'package:flutter/material.dart';
import 'package:learn_flutter_web/helpers/responsive.dart';
import 'package:learn_flutter_web/views/homeScreen/layout/smallScreen.dart';
import 'package:learn_flutter_web/views/homeScreen/sideMenu/sideMenu.dart';
import 'layout/largeScreen.dart';
import 'topNavigation.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigation(context, scaffoldKey),
      drawer: Drawer(
        child: SideMenu(),
      ),
      body: Responsive(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
