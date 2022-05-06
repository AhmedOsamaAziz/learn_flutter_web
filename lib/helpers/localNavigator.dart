import 'package:flutter/material.dart';
import 'package:learn_flutter_web/constants/controllers.dart';
import 'package:learn_flutter_web/routing/router.dart';
import 'package:learn_flutter_web/routing/routes.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigationKey,
      initialRoute: OverViewPageRoute,
      onGenerateRoute: generateRoute,
    );
