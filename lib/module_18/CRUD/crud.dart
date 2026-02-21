import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_14/module_18/CRUD/controller/productcontroller.dart';
import 'package:http/http.dart' as http;

class Crud extends StatefulWidget {
  const Crud({super.key});

  @override
  State<Crud> createState() => _CrudState();
}

class _CrudState extends State<Crud> {
  ProductController productController =   ProductController();


  Future fetchData() async {
   await productController.getProducts();

   setState(() {

   });
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product'),
      ),
      body: GridView.builder(

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            childAspectRatio: 0.78
        ),
        itemCount: productController.products.length,
        itemBuilder: (context,index){
          final item = ProductController().products[index];
          return Card(
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                      height: 140,
                      child: Image.network(item.img.toString())),
                  Text(item.productName.toString(),style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  Text('Price : ${item.unitPrice}'),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.edit, color: Colors.orange,)),
                      IconButton(onPressed: (){
                        productController.deleteProducts(item.sId.toString()).then((value){

                          if(value){
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Product deleted'))
                            );
                          }else{
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Something wrong...!'))
                            );
                          }

                        });

                      }, icon: Icon(Icons.delete,color: Colors.red,)),

                    ],
                  )

                ],
              ),
            ),
          );
        },

      ),
    );
  }
}