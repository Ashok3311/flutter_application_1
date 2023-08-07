import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/my_botton.dart';
import 'package:flutter_application_1/components/my_text_field.dart';
class LoginPage extends StatefulWidget {
  final void Function()?onTap;
  const LoginPage ({
    super.key,
    required this.onTap,
  
  
  
  });

 @override
State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
final emailController = TextEditingController();
final passwordController = TextEditingController();

// signIn user with password  

void signIn() {}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.green[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [


                SizedBox(height: 50),


                Icon(
                  Icons.message,
                  size:80,
                ),

                 SizedBox(height: 19),


                const Text(
                  "Welcome back in my Loginpage.you are've been missed!.",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),

                 SizedBox(height: 20),


                 myTextField
                 (controller: emailController,
                  hintText: 'Email address', 
                  abscureText: false,
                  ),


                   SizedBox(height: 15),


                  myTextField
                  (controller: passwordController,
                  hintText: 'password', 
                  abscureText: true,
                  ),

                    SizedBox(height: 15),

                    MyBotton(onTap:signIn, text:"Sign in "),

                  SizedBox(height: 34),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text('not a member'),
                   const  SizedBox(width: 6),

                    GestureDetector(
                      onTap: widget.onTap,
                      child:
                      const Text('Register now',
                           style: TextStyle(
                        fontWeight: FontWeight.bold,
                           
                      ),
                      ),
                    ),
                  ],
                  ),


                  

              ],
              ),
          ),
        ),
      ),
    );
}
}