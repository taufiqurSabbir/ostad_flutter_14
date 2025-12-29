import 'package:flutter/material.dart';

class Module12Class2 extends StatelessWidget {
  const Module12Class2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List view'),
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context,index){
          return Card(

            child: ListTile(
              leading: Icon(Icons.phone),
              trailing: Icon(Icons.delete,color: Colors.red,),
              title: Text('Taufiq',style: TextStyle(fontSize: 18),),
              subtitle: Text('017952895484'),
            ),
          );
        },

      ),
    );
  }
}
