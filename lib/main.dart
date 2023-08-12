import 'package:flutter/material.dart';
import 'package:todo_shared/homescreen.dart';

void main(List<String> args) {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'shared-app',
      home: homescreen(),
    );
  }
}
