import 'package:flutter/material.dart';
import 'package:learn_flutter_web/helpers/responsive.dart';
import 'package:learn_flutter_web/screens/homeScreen/smallScreen.dart';

import 'largeScreen.dart';
import 'topNavigation.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigation(context, scaffoldKey),
      drawer: Drawer(),
      body: Responsive(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
