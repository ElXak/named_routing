import 'package:flutter/material.dart';

import 'router.dart' as router;
import 'routing_constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Named Routing',
      initialRoute: HomeViewRoute,
      onGenerateRoute: router.generateRoute,
      // onUnknownRoute: (settings) => MaterialPageRoute(
      //     builder: (context) => UndefinedView(name: settings.name)),
    );
  }
}
