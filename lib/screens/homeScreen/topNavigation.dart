import 'package:flutter/material.dart';
import 'package:learn_flutter_web/constants/style.dart';
import 'package:learn_flutter_web/helpers/responsive.dart';
import 'package:learn_flutter_web/sharedWidgets/customText.dart';

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
              ],
            )
          : IconButton(
              onPressed: () {
                key.currentState?.openDrawer();
              },
              icon: Icon(Icons.menu)),
      title: CustomText(
        text: 'Dash Flow',
        color: dark,
        size: 18,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.settings),
          color: dark.withOpacity(.7),
        ),
        Center(
          child: Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications),
                color: dark,
              ),
              Positioned(
                child: Container(
                  width: 12,
                  height: 12,
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: active,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: light,
                      width: 2,
                    ),
                  ),
                ),
                top: 7,
                right: 7,
              ),
            ],
          ),
        ),
        Center(
          child: Container(
            width: 1,
            height: 25,
            color: lightGrey,
          ),
        ),
        SizedBox(
          width: 24,
        ),
        Center(
          child: CustomText(
            text: 'Ahmed Osama',
            color: dark,
            size: 14,
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Container(
            padding: EdgeInsets.all(2),
            margin: EdgeInsets.all(2),
            child: CircleAvatar(
              backgroundColor: light,
              child: Icon(
                Icons.person_outline,
                color: dark,
              ),
            ),
          ),
        )
      ],
      elevation: 10,
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: dark),
    );
