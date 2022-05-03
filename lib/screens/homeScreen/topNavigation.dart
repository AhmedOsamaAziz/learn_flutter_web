import 'package:flutter/material.dart';
import 'package:learn_flutter_web/constants/style.dart';
import 'package:learn_flutter_web/helpers/responsive.dart';

AppBar topNavigation(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !Responsive.isSmallSize(context)
          ? Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 14),
                  child: Image.asset(
                    "assets/icons/logo.png",
                    width: 24,
                    height: 24,
                  ),
                ),
                Text(
                  'DashFLow',
                  style: TextStyle(color: dark),
                )
              ],
            )
          : IconButton(
              onPressed: () {
                key.currentState?.openDrawer();
              },
              icon: Icon(Icons.menu)),
      elevation: 10,
      backgroundColor: light,
    );
