import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_manager/Controller/auth_controller.dart';
import 'package:task_manager/data/models/user_model.dart';
import 'package:task_manager/main.dart';
import 'package:task_manager/providers/auth_provider.dart';
import 'package:task_manager/screens/sign_up_screen.dart';
import 'package:task_manager/utils/app_colors.dart';

import '../data/models/api_response.dart';
import '../data/services/api_caller.dart';
import '../providers/auth_provider.dart';
import '../utils/urls.dart';
import '../widgets/screen_background.dart';
import '../widgets/showSnackBar.dart';
import 'forget_password_email_verify.dart';
import 'main_nav_screen.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();



  void _onTapSignUp(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
}


Future<void> _signIn() async {
    final authProvider = context.read<AuthProvider>();

    final bool success = await authProvider.signIn(_emailController.text, _passwordController.text);

    if(success){
      showSnackbar(context,'Login success...!');
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MainNavScreen()));
    }else{
      showSnackbar(context,authProvider.errorMessage.toString());

    }

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 150,
                ),
                Text(
                  'Get Started With',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                  controller: _emailController,
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return 'Please Enter email';
                    }else{
                      return null;
                    }
                  },

                  decoration: InputDecoration(hintText: 'Email'),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return 'Please Enter First name';
                    }else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(hintText: 'Password'),
                ),
                FilledButton(
                    onPressed: () {
                      if(_formKey.currentState!.validate()){
                        _signIn();

                      }

                    },
                    child: Icon(Icons.arrow_circle_right_outlined)),

                SizedBox(height: 35,),
                Center(
                  child: Column(
                    children: [
                      TextButton(
                          onPressed: () {

                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPasswordEmailVerify()));
                          },
                          child: Text(
                            'Forget password ?',
                            style: TextStyle(color: Colors.grey),
                          )),

                      RichText(text: TextSpan(
                        text: "Don't have an account? ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
                        children: [
                          TextSpan(
                            text: 'Sign Up', style: TextStyle(color: AppColors.Pcolor,fontWeight: FontWeight.bold),
                            recognizer: TapGestureRecognizer()..onTap = _onTapSignUp
                          )
                        ]
                      ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
