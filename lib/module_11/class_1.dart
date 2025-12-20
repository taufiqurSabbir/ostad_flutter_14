import 'package:flutter/material.dart';

class Module11Class1 extends StatelessWidget {
  const Module11Class1({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  helperText: 'Phone number',
                  hintText: 'Enter your Number',
                  hintStyle: TextStyle(
                    fontSize: 18
                  ),
                  labelText: 'Phone Number',
                  labelStyle: TextStyle(
                    fontSize: 18
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50)
                  ),
                  
                  prefixIcon: Icon(Icons.phone),
                  suffixIcon: Icon(Icons.check)
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter Password',
                  hintStyle: TextStyle(
                    fontSize: 18
                  ),
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    fontSize: 18
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50)
                  ),

                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye)
                ),
              ),

              SizedBox(height: 20,),
              SizedBox(
                width: 200,
                height: 40,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white
                    ),

                    onPressed: (){
                    if(phoneController.text.isEmpty){
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Please Enter Phone number'))
                      );
                    }else if(phoneController.text.length != 11){
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Please Enter correct Phone number'))
                      );
                    }else{
                      phoneController.clear();
                    }
                    }, child: Text('Submit')),
              ),

              SizedBox(
                height: 40,
              ),


              Container(
                alignment: Alignment.center,
                height: 70,
                width: 200,

                child: Text('Continer test'),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 2,
                    color: Colors.black
                  ),
                  
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      offset: Offset(4, 10)
                    ),
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.3),
                      offset: Offset(-10, -10)
                    ),
                  ]
                ),
              )

            ],
          ),
        ),
      )
    );
  }
}
