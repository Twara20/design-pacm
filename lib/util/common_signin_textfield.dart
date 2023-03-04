
import 'package:flutter/material.dart';

class CommonSignInTextField extends StatefulWidget {
  CommonSignInTextField({Key? key,

    this.hintText,
    this.hintStyle,
    this.prefixIcon,
    this.suffixIcon,
    this.keyboardType=TextInputType.text,
    this.validator,
    required this.obscureText,
    this.filled,
    this.maxlength,
    this.controller,


  }) : super(key: key);

  var controller;
  String? hintText;
  final TextStyle? hintStyle;
  final Icon ?prefixIcon,suffixIcon;
  TextInputType keyboardType;
  String? Function(String?)? validator;
  bool obscureText = false;
  final bool? filled;
  int? maxlength;


  @override
  State<CommonSignInTextField> createState() => _CommonSignInTextFieldState();
}

class _CommonSignInTextFieldState extends State<CommonSignInTextField> {
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      controller: widget.controller, //


      style: TextStyle(color: Colors.grey,),
      cursorColor: Colors.black,
      decoration: InputDecoration(

        hintText:widget.hintText,
        hintStyle:widget.hintStyle,

        prefixIcon:widget.prefixIcon,
        suffixIcon: widget.suffixIcon,
        filled: widget.filled,

    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey.withOpacity(0.5),width: 1.2),
      borderRadius: BorderRadius.circular(15),
    ),

    focusedBorder:OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.black, width: 1.0),
    borderRadius: BorderRadius.circular(15.0),
    ),

    border: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey, width: 1),
      borderRadius: BorderRadius.circular(10),
    ),

        // enabledBorder: UnderlineInputBorder(
        //   borderSide: BorderSide(color: Colors.black),
        // ),
        // focusedBorder: UnderlineInputBorder(
        //   borderSide: BorderSide(color: Colors.black),
        // ),

      ),
      keyboardType:widget.keyboardType,
      validator:widget.validator,
      obscureText: widget.obscureText,
      maxLength: widget.maxlength,

    );
  }
}
