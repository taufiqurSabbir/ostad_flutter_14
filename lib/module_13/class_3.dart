import 'package:flutter/material.dart';
class Module13Class3 extends StatelessWidget {
  const Module13Class3({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> cartItems = [
      {
        'img':
        'https://domf5oio6qrcr.cloudfront.net/medialibrary/11525/0a5ae820-7051-4495-bcca-61bf02897472.jpg',
        'name': 'Apple',
      },
      {
        'img':
        'https://images.apollo247.in/pd-cms/cms/2025-05/AdobeStock_299290543.webp?tr=q-80,f-webp,w-450,dpr-2,c-at_max',
        'name': 'Banana',

      },
      {
        'img':
        'https://media.gettyimages.com/id/172665473/photo/oranges-wallpaper.jpg?s=612x612&w=gi&k=20&c=jSjvdOhNDuF5u1B4Qw5T1KWZGhFwDfD8G1bhziwHQ_I=',
        'name': 'Orange',

      },
      {
        'img':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRH73ee12_Lw-63UujjKcQ25ZTuKtl1_gNUcA&s',
        'name': 'Mango',

      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Shoping Cart'),
      ),
      body: ListView.builder(
          itemCount: cartItems.length,
          itemBuilder: (context,index){
            final item = cartItems[index];
            return Dismissible(
              key: Key(item['name']!),

              // onDismissed: (direction){
              //
              // },

              confirmDismiss: (direction)async{
                if(direction == DismissDirection.startToEnd){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("${item['name']} QTY increased"))
                  );
                }else if(direction == DismissDirection.endToStart){
                  SnackBar(content: Text("${item['name']} removed  from card"));
                }
              },
              background: Container(
                color: Colors.green,
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Icon(Icons.add,color: Colors.white,),
              ),
            
              secondaryBackground: Container(
                color: Colors.red,
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Icon(Icons.delete,color: Colors.white,),
              ),

              child: Card(
                child: ListTile(
                  title:  Text(item["name"]!),
                  leading: Image.network("${item['img']}"),
                  trailing: Text("QTY: 2",style: TextStyle(fontSize: 16),),
                ),
              ),
            );
          }

      ),
    );
  }
}
