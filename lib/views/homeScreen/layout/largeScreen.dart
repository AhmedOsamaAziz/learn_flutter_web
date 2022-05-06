import 'package:flutter/material.dart';
import 'package:learn_flutter_web/helpers/localNavigator.dart';
import 'package:learn_flutter_web/views/homeScreen/sideMenu/sideMenu.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SideMenu(),
        ),
        Expanded(
          flex: 5,
          child: localNavigator(),
        ),
      ],
    );
  }
}
