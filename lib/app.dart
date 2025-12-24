import 'package:flutter/material.dart';

import 'home.dart';
import 'module_10/class_3.dart';
import 'module_11/class_1.dart';
import 'module_11/class_2.dart';
import 'module_11/class_3.dart';

class MyAPP extends StatelessWidget {
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.deepPurple,
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.blue.shade50,
        
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8)
            )
          )
        ),

        inputDecorationTheme: InputDecorationTheme(

            hintStyle: TextStyle(
                fontSize: 18
            ),
            labelStyle: TextStyle(
                fontSize: 18
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20)
            ),
        ),

        appBarTheme: AppBarTheme(
            backgroundColor: Colors.blue,
          centerTitle: true
        ),

          textTheme: TextTheme(
            bodySmall: TextStyle(fontSize: 18)
          )




      ),

      title: 'Flutter 14',
      home: Module11Class3(),
    );
  }
}
