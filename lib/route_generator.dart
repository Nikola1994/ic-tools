import 'package:flutter/material.dart';
import 'package:ic_tools/resources/core/no_page_widget.dart';
import 'package:ic_tools/route/main_route.dart';

class RouteGenerator {

  static const String MAIN_ROUTE = '/';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    String routeName = settings.name!.split('?')[0];
    List<String> routeNameList = routeName.split("/");
    String firstRoute = "/" + routeNameList[1];
    switch (firstRoute) {
      case MAIN_ROUTE:
        return MaterialPageRoute(builder: (_) => const MainRoute());
    }
    return MaterialPageRoute(builder: (_) => const NoPageWidget());
  }

 
}