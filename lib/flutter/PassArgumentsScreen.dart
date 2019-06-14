import 'package:flutter/material.dart';
class PassArgumentsScreen extends StatelessWidget {
  static const routeName = '/PassArgumentsScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
      body: Center(
        child: Text('message'),
      ),
    );
  }
}

// You can pass any object to the arguments parameter. In this example,
// create a class that contains both a customizable title and message.

