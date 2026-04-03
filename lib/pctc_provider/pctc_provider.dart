import 'package:flutter/material.dart';
import 'package:flutter_14/pctc_provider/providers/count_provider.dart';
import 'package:provider/provider.dart';

class PctcProvider extends StatelessWidget {
  const PctcProvider({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CountProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Count with provider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<CountProvider>(
              builder: (context,counter2,child) {
                return Text(counter2.count.toString(),style: TextStyle(fontSize: 50),);
              }
            ),
            Text(counter.count.toString(),style: TextStyle(fontSize: 50),),
            SizedBox(height: 15,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  counter.increment();
                }, child: Text('+')),
                ElevatedButton(onPressed: (){
                  counter.decrement();
                }, child: Text('-'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
