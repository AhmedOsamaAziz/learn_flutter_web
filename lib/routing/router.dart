import 'package:flutter/material.dart';
import 'package:learn_flutter_web/routing/routes.dart';
import 'package:learn_flutter_web/views/clients/clientPage.dart';
import 'package:learn_flutter_web/views/drivers/driversPage.dart';
import 'package:learn_flutter_web/views/overview/overviewPage.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OverViewPageRoute:
      return _getPageRoute(OverViewPage());
    case DriversPageRoute:
      return _getPageRoute(DriversPage());
    case ClientsPageRoute:
      return _getPageRoute(ClientPage());
    default:
      return _getPageRoute(OverViewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
