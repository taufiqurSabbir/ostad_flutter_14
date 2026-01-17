import 'package:flutter/material.dart';

import 'home.dart';
import 'module_10/class_3.dart';
import 'module_11/class_1.dart';
import 'module_11/class_2.dart';
import 'module_11/class_3.dart';
import 'module_12/class_1.dart';
import 'module_12/class_2.dart';
import 'module_12/list_v.dart';
import 'module_12/module_12_grid.dart';
import 'module_13/class_1.dart';
import 'module_13/class_2_alert.dart';
import 'module_13/class_3.dart';
import 'module_13/class_4.dart';
import 'module_13/drag_drop.dart';
import 'module_14/class_1.dart';
import 'module_14/class_2.dart';
import 'module_14/class_3.dart';
import 'module_14/test2.dart';

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


      routes: {
        '/home' : (context) => Home(),
        '/login' : (context) => Module11Class1(),
        '/size' : (context) => Module11Class3(),
        '/nvi' : (context) => Module14Class2(),
        '/bar' : (context) => Module14Class3(),
        '/test2' : (context){
          final args = ModalRoute.of(context)!.settings.arguments as Map<String,dynamic>;
          return Test2(name: args['name'], price: args['price'], onTap: args['onTap']);
        }
      },

     initialRoute: '/bar',
    );
  }
}
