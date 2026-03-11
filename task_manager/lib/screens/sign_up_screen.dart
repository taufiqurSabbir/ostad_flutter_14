import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/screens/login_screen.dart';
import 'package:task_manager/screens/sign_up_screen.dart';
import 'package:task_manager/utils/app_colors.dart';

import '../widgets/screen_background.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();


  void _onTaplogin(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 150,
                  ),
                  Text(
                    'Join with Us',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(hintText: 'Email'),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return 'Please Enter email';
                      }else{
                        return null;
                      }
                    },

                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                      controller:_firstNameController,
                    decoration: InputDecoration(hintText: 'First name'),

                    validator: (value){
                      if(value == null || value.isEmpty){
                        return 'Please Enter First name';
                      }else{
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                      controller: _lastNameController,
                    decoration: InputDecoration(hintText: 'Last name'),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return 'Please Enter Last name';
                      }else{
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _mobileController,
                    decoration: InputDecoration(hintText: 'Mobile'),
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
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(hintText: 'Password'),

                    validator: (value){
                      if(value == null || value.isEmpty){
                        return 'Please Enter First name';
                      }else{
                        return null;
                      }
                    },
                  ),
                  FilledButton(
                      onPressed: () {
                        if(_formKey.currentState!.validate()){

                        }
                      },
                      child: Icon(Icons.arrow_circle_right_outlined)),

                  SizedBox(height: 35,),
                  Center(
                    child: RichText(text: TextSpan(
                        text: "Have an account? ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
                        children: [
                          TextSpan(
                              text: 'Login', style: TextStyle(color: AppColors.Pcolor,fontWeight: FontWeight.bold),
                              recognizer: TapGestureRecognizer()..onTap = _onTaplogin
                          )
                        ]
                    )),
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
