import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_manager/app.dart';
import 'package:task_manager/providers/auth_provider.dart';
import 'package:task_manager/providers/navigation_provider.dart';
import 'package:task_manager/providers/task_provider.dart';

void main(){
  runApp(
      MultiProvider(providers: [
          ChangeNotifierProvider(
          create: (_)=>AuthProvider()),
        ChangeNotifierProvider(
            create: (_)=>TaskProvider()),

        ChangeNotifierProvider(
            create: (_)=>NavigationProvider()),
      ],

      child:   TaskManagerApp(),
      )

    );
}