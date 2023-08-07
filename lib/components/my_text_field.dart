import 'package:flutter/material.dart';

class myTextField extends StatelessWidget{
  final TextEditingController controller;
 final String hintText;
  final bool abscureText;
  const myTextField ({
    super.key,
    required this.controller,
    required this.hintText,
    required this.abscureText,
  });
  @override
  Widget build(BuildContext context) {
    return  TextField(
         controller: controller,
         obscureText: abscureText,
         decoration:InputDecoration( 
      enabledBorder: OutlineInputBorder(
         borderSide: BorderSide(color: Colors.black),
    ),
       focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blueAccent),
       ),
       fillColor: Colors.grey[100],
      filled: true,
      hintText: hintText,
      hintStyle: const TextStyle(color: Color.fromARGB(255, 134, 105, 105)),
         ),
    );
    

}}