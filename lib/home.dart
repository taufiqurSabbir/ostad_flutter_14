import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is app bar'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child:     Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is Body', style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
                color: Colors.blue
            ),),
            Text('This is Body', style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
                color: Colors.blue
            ),),
            Text('This is Body', style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
                color: Colors.blue
            ),),
            Text('This is Body', style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
                color: Colors.blue
            ),),
            Text('This is Body', style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
                color: Colors.blue
            ),),
            Text('This is Body', style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
                color: Colors.blue
            ),),
            Text('This is Body', style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
                color: Colors.blue
            ),),
            Text('This is Body', style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
                color: Colors.blue
            ),),


          ],
        ),


        // Column(
        //   mainAxisAlignment: MainAxisAlignment.end,
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     Text('This is Body', style: TextStyle(
        //         fontSize: 30,
        //         fontWeight: FontWeight.w400,
        //         color: Colors.blue
        //     ),),
        //     Text('This is Body', style: TextStyle(
        //         fontSize: 30,
        //         fontWeight: FontWeight.w400,
        //         color: Colors.blue
        //     ),),
        //     Text('This is Body', style: TextStyle(
        //         fontSize: 30,
        //         fontWeight: FontWeight.w400,
        //         color: Colors.blue
        //     ),),
        //     Text('This is Body', style: TextStyle(
        //         fontSize: 30,
        //         fontWeight: FontWeight.w400,
        //         color: Colors.blue
        //     ),),
        //     Text('This is Body', style: TextStyle(
        //         fontSize: 30,
        //         fontWeight: FontWeight.w400,
        //         color: Colors.blue
        //     ),),
        //     Text('This is Body', style: TextStyle(
        //         fontSize: 30,
        //         fontWeight: FontWeight.w400,
        //         color: Colors.blue
        //     ),),
        //     Text('This is Body', style: TextStyle(
        //         fontSize: 30,
        //         fontWeight: FontWeight.w400,
        //         color: Colors.blue
        //     ),),
        //     Text('This is Body', style: TextStyle(
        //         fontSize: 30,
        //         fontWeight: FontWeight.w400,
        //         color: Colors.blue
        //     ),),
        //
        //
        //   ],
        // ),
      )
    );
  }
}
