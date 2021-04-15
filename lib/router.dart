import 'package:flutter/material.dart';

import 'home_view.dart';
import 'login_view.dart';
import 'routing_constants.dart';
import 'undefined_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeViewRoute:
      return MaterialPageRoute(builder: (context) => HomeView());
      break;
    case LoginViewRoute:
      var argument = settings.arguments;
      return MaterialPageRoute(
          builder: (context) => LoginView(argument: argument));
      break;
    default:
      return MaterialPageRoute(
          builder: (context) => UndefinedView(name: settings.name));
  }
}
