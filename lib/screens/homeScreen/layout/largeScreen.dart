import 'package:flutter/material.dart';
import 'package:learn_flutter_web/screens/homeScreen/sideMenu/sideMenu.dart';

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
          child: Container(
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
