import 'package:flutter/material.dart';

import '../components/my_botton.dart';
import '../components/my_text_field.dart';
class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key,
  required this.onTap
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage>{
   
  final emailController = TextEditingController();
final passwordController = TextEditingController();
final comformpasswordController = TextEditingController();



//signup user the number of password
      void signUp (){}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 119, 225, 124),
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
                  ".ltes create an account for you !.",
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


                  myTextField
                  (controller: comformpasswordController,
                  hintText: ' comform password', 
                  abscureText: true,
                  ),

                    SizedBox(height: 15),

                    MyBotton(onTap:signUp, text:"Sign up "),

                  SizedBox(height: 34),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text('Already a member'),
                    
                  
                    SizedBox(width: 6),

                    GestureDetector(
                      onTap:widget.onTap ,
                      child: const Text('Loging now',
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
