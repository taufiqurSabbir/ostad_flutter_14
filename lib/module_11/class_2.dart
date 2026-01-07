import 'package:flutter/material.dart';

import '../home.dart';

class Module11Class2 extends StatelessWidget {
  const Module11Class2({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(

        title: Text('Login'),
      ),
    body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
               Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/YouTube_Logo_2017.svg/2560px-YouTube_Logo_2017.svg.png',
                 height: 100,
                 width: 200,
               ),
            
                Image.asset('asset/YT.png',
                height: 100,
                  width: 250,
                ),
                Text('Login with phone & Password',
                style: Theme.of(context).textTheme.bodySmall
                ),
                SizedBox(height: 20,),
            
                TextFormField(
                  controller: phoneController,
                  decoration: InputDecoration(
                    hintText: 'Phone number',
                  ),
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return 'Please Enter phone number';
                    }else if(value.length != 11){
                      return 'Please enter correct phone number';
                    }else{
                      return null;
                    }
                  },
                ),
                SizedBox(height: 20,),
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder()
                  ),
            
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return 'Please Enter password';
                    }else if(value.length < 6){
                      return 'password must be at lest 6 characters';
                    }else{
                      return null;
                    }
                  },
                ),
            
                SizedBox(height: 20,),
            
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white
                      ),
                      onPressed: (){
                        if(_formKey.currentState!.validate()){
            
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
                        }
                      }, child: Text('Login',
                    style: Theme.of(context).textTheme.bodySmall,
                  )),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
            
                      onPressed: (){
                        if(_formKey.currentState!.validate()){
            
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
                        }
                      }, child: Text('Login')),
                ),
            
                SizedBox(height: 20,),
            
                ElevatedButton(onPressed: (){}, child: Text('Test')),
            
            
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 75,
                      backgroundColor: Colors.blue,
                    ),
                    Positioned(
                      left: 6,
                      top: 5,
                      child: CircleAvatar(
                        radius: 70,
                        backgroundImage: NetworkImage(                  "https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D"
                        ),
                      ),
                    ),
            
                    Positioned(
                      bottom: 15,
                      right: 5,
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle
                        ),
                      ),
                    )
                  ],
                )
            
            
              ],
            ),
          ),
        ),
      ),
    ),
    );
  }
}
