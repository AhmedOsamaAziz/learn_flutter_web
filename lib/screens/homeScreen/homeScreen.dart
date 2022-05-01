import 'package:flutter/material.dart';
import 'package:learn_flutter_web/helpers/responsive.dart';
import 'package:learn_flutter_web/screens/homeScreen/smallScreen.dart';

import 'largeScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 10,
          backgroundColor: Colors.white,
        ),
        body: Responsive(
          largeScreen: LargeScreen(),
          smallScreen: SmallScreen(),
        ));
  }
}
