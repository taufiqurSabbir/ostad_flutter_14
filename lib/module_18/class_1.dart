import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiCall extends StatefulWidget {
  const ApiCall({super.key});

  @override
  State<ApiCall> createState() => _ApiCallState();
}

class _ApiCallState extends State<ApiCall> {


  List products = [];

  Future<void>getProducts()async {
    final url = Uri.parse('http://35.73.30.144:2008/api/v1/ReadProduct');
    final response =await http.get(url);

    if(response.statusCode == 200){
      final jsonResponse = jsonDecode(response.body);

      setState(() {
        products = jsonResponse['data'];
      });
    }
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getProducts();
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
              crossAxisSpacing: 20,
            childAspectRatio: 1
          ),
      itemCount: products.length,
        itemBuilder: (context,index){
            final item = products[index];
            return Card(
              child: Container(
               child: Column(
                 children: [
                   SizedBox(
                       height: 140,
                       child: Image.network(item['Img'])),
                   Text(item['ProductName'],style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                   Text('Price : ${item['UnitPrice']}'),
              
                 ],
               ),
              ),
            );
        },

      ),
    );
  }
}
