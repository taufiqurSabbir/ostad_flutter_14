import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/screens/sign_up_screen.dart';
import 'package:task_manager/utils/app_colors.dart';

import '../widgets/screen_background.dart';

class ForgetPasswordEmailVerify extends StatefulWidget {
  const ForgetPasswordEmailVerify({super.key});

  @override
  State<ForgetPasswordEmailVerify> createState() => _ForgetPasswordEmailVerifyState();
}

class _ForgetPasswordEmailVerifyState extends State<ForgetPasswordEmailVerify> {
  void _onTapSignUp(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: ScreenBackground(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 150,
              ),
              Text(
                'Your email address',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(
                height: 25,
              ),
              TextFormField(
                decoration: InputDecoration(hintText: 'Email'),
              ),
              SizedBox(height: 20,),
              FilledButton(
                  onPressed: () {},
                  child: Icon(Icons.arrow_circle_right_outlined)),

              SizedBox(height: 35,),
              Center(
                child: RichText(text: TextSpan(
                    text: " have an account? ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
                    children: [
                      TextSpan(
                          text: 'Login', style: TextStyle(color: AppColors.Pcolor,fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()..onTap = _onTapSignUp
                      )
                    ]
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
