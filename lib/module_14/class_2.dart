import 'package:flutter/material.dart';
import 'package:flutter_14/module_14/test1.dart';

import 'class_1.dart';
class Module14Class2 extends StatefulWidget {
  const Module14Class2({super.key});

  @override
  State<Module14Class2> createState() => _Module14Class2State();
}

class _Module14Class2State extends State<Module14Class2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>LifeCycle()));
            }, child: Text('Home')),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Test(name: 'Apple',price: 300, onTap: () {
                print(' Hello from home page');

              },)));
            }, child: Text('Test')),

            //Named Routes
            
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/login');
            }, child: Text('Login')),



            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/test2', arguments: {
                'name': 'Banana',
                'price' : 50,
                'onTap': (){
                  print('Named Routes');
                }
              });
            }, child: Text('Test with arg')),
          ],
        ),
      ),
    );
  }
}
