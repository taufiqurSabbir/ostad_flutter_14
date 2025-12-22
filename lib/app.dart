import 'package:flutter/material.dart';

import 'home.dart';
import 'module_10/class_3.dart';
import 'module_11/class_1.dart';
import 'module_11/class_2.dart';

class MyAPP extends StatelessWidget {
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 14',
      home: Module11Class2(),
    );
  }
}
