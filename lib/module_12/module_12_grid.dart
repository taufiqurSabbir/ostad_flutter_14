import 'package:flutter/material.dart';
class Module12Grid extends StatelessWidget {
  const Module12Grid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid view'),
      ),
      // body: GridView.count(
      //     crossAxisCount: 3,
      //   crossAxisSpacing: 10,
      //   mainAxisSpacing: 10,
      //   children: [
      //     Container(
      //       color: Colors.red,
      //     ),
      //     Container(
      //       color: Colors.green,
      //     ),
      //     Stack(
      //       children: [
      //         Image.network('https://images.unsplash.com/photo-1566073771259-6a8506099945',
      //           height: 180,
      //           width: double.infinity,
      //           fit: BoxFit.cover,
      //         ),
      //
      //         Container(
      //           height: 180,
      //           color: Colors.black.withOpacity(0.35),
      //         ),
      //
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             Positioned(
      //               top: 10,
      //               left: 10,
      //               child: Container(
      //                 padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
      //                 decoration: BoxDecoration(
      //                     color: Colors.green,
      //                     borderRadius: BorderRadius.circular(10)
      //                 ),
      //                 child: Text('BEST DEAL',
      //                   style: TextStyle(
      //                       color: Colors.white,
      //                       fontSize: 12
      //                   ),
      //                 ),
      //               ),
      //             ),
      //
      //             IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,color: Colors.white,))
      //           ],
      //         ),
      //
      //
      //
      //       ],
      //     ),
      //     Stack(
      //       children: [
      //         Image.network('https://images.unsplash.com/photo-1566073771259-6a8506099945',
      //           height: 180,
      //           width: double.infinity,
      //           fit: BoxFit.cover,
      //         ),
      //
      //         Container(
      //           height: 180,
      //           color: Colors.black.withOpacity(0.35),
      //         ),
      //
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             Positioned(
      //               top: 10,
      //               left: 10,
      //               child: Container(
      //                 padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
      //                 decoration: BoxDecoration(
      //                     color: Colors.green,
      //                     borderRadius: BorderRadius.circular(10)
      //                 ),
      //                 child: Text('BEST DEAL',
      //                   style: TextStyle(
      //                       color: Colors.white,
      //                       fontSize: 12
      //                   ),
      //                 ),
      //               ),
      //             ),
      //
      //             IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,color: Colors.white,))
      //           ],
      //         ),
      //
      //
      //
      //       ],
      //     ),
      //     Stack(
      //       children: [
      //         Image.network('https://images.unsplash.com/photo-1566073771259-6a8506099945',
      //           height: 180,
      //           width: double.infinity,
      //           fit: BoxFit.cover,
      //         ),
      //
      //         Container(
      //           height: 180,
      //           color: Colors.black.withOpacity(0.35),
      //         ),
      //
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             Positioned(
      //               top: 10,
      //               left: 10,
      //               child: Container(
      //                 padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
      //                 decoration: BoxDecoration(
      //                     color: Colors.green,
      //                     borderRadius: BorderRadius.circular(10)
      //                 ),
      //                 child: Text('BEST DEAL',
      //                   style: TextStyle(
      //                       color: Colors.white,
      //                       fontSize: 12
      //                   ),
      //                 ),
      //               ),
      //             ),
      //
      //             IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,color: Colors.white,))
      //           ],
      //         ),
      //
      //
      //
      //       ],
      //     ),
      //     Stack(
      //       children: [
      //         Image.network('https://images.unsplash.com/photo-1566073771259-6a8506099945',
      //           height: 180,
      //           width: double.infinity,
      //           fit: BoxFit.cover,
      //         ),
      //
      //         Container(
      //           height: 180,
      //           color: Colors.black.withOpacity(0.35),
      //         ),
      //
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             Positioned(
      //               top: 10,
      //               left: 10,
      //               child: Container(
      //                 padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
      //                 decoration: BoxDecoration(
      //                     color: Colors.green,
      //                     borderRadius: BorderRadius.circular(10)
      //                 ),
      //                 child: Text('BEST DEAL',
      //                   style: TextStyle(
      //                       color: Colors.white,
      //                       fontSize: 12
      //                   ),
      //                 ),
      //               ),
      //             ),
      //
      //             IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,color: Colors.white,))
      //           ],
      //         ),
      //
      //
      //
      //       ],
      //     ), Stack(
      //       children: [
      //         Image.network('https://images.unsplash.com/photo-1566073771259-6a8506099945',
      //           height: 180,
      //           width: double.infinity,
      //           fit: BoxFit.cover,
      //         ),
      //
      //         Container(
      //           height: 180,
      //           color: Colors.black.withOpacity(0.35),
      //         ),
      //
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             Positioned(
      //               top: 10,
      //               left: 10,
      //               child: Container(
      //                 padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
      //                 decoration: BoxDecoration(
      //                     color: Colors.green,
      //                     borderRadius: BorderRadius.circular(10)
      //                 ),
      //                 child: Text('BEST DEAL',
      //                   style: TextStyle(
      //                       color: Colors.white,
      //                       fontSize: 12
      //                   ),
      //                 ),
      //               ),
      //             ),
      //
      //             IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,color: Colors.white,))
      //           ],
      //         ),
      //
      //
      //
      //       ],
      //     ),
      //
      //   ],
      //
      // )

      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10

          ),

        itemCount: 20,
        itemBuilder: (context,index){
            return Column(
              children: [
                Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)
                  ),
                  color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Icon(Icons.phone,size: 40,color: Colors.white,),
                  ),
                ),
                Text('Add money')
              ],
            );
        },



      ),
    );
  }
}
