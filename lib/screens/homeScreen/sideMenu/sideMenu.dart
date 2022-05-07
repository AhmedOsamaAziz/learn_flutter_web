import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_flutter_web/constants/controllers.dart';
import 'package:learn_flutter_web/constants/style.dart';
import 'package:learn_flutter_web/helpers/responsive.dart';
import 'package:learn_flutter_web/models/routes.dart';
import 'package:learn_flutter_web/screens/homeScreen/sideMenu/sideMenuItem.dart';
import 'package:learn_flutter_web/sharedWidgets/customText.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Container(
      color: light,
      child: ListView(
        children: [
          if (Responsive.isSmallSize(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(width: _width / 48),
                    Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: Image.asset("assets/icons/logo.png"),
                    ),
                    Flexible(
                        child: CustomText(
                      text: "Dash",
                      size: 20,
                      weight: FontWeight.bold,
                      color: active,
                    )),
                    SizedBox(
                      width: _width / 48,
                    )
                  ],
                ),
              ],
            ), // For Logo & Text
          Divider(
            color: lightGrey.withOpacity(.1),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItems
                .map((itemName) => SideMenuItem(
                      itemName: itemName == AuthenticationPageRoute
                          ? "Log Out"
                          : itemName,
                      onTap: () {
                        if (itemName == AuthenticationPageRoute) {
                          // TODO:: go to authentication page
                        }

                        if (!menuController.isActive(itemName)) {
                          menuController.changeActiveItemTo(itemName);
                          if (Responsive.isSmallSize(context)) Get.back();
                          // TODO :: go to item name Route
                        }
                      },
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
