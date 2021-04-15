import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  final String argument;

  const LoginView({Key key, this.argument}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // onWillPop: () => Future.value(false),
      onWillPop: () async {
        Navigator.pop(context, 'fromLogin');
        return false;
      },
      child: Scaffold(
        body: Center(
          child: Text('Login $argument'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pop(context, 'fromLogin'),
        ),
      ),
    );
  }
}
