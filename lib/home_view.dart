import 'package:flutter/material.dart';
import 'package:named_routing/routing_constants.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Home'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var navigationResult = await Navigator.pushNamed(
              context, LoginViewRoute,
              arguments: 'passed in argument');

          if (navigationResult == 'fromLogin')
            showDialog(
                context: context,
                builder: (context) => AlertDialog(title: Text('From Login')));
        },
      ),
    );
  }
}
