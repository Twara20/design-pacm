import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CommonTextField extends StatefulWidget {
  CommonTextField(
      {Key? key,
      this.hintText,
      this.hintStyle,
      this.prefixIcon,
      this.suffixIcon,
      this.keyboardType = TextInputType.text,
      this.validator,
      required this.obscureText,
      this.filled,
      this.maxlength,
      this.controller,
      this.inputFormatters})
      : super(key: key);

  var controller;
  String? hintText;
  final TextStyle? hintStyle;
  final Icon? prefixIcon, suffixIcon;
  TextInputType keyboardType;
  String? Function(String?)? validator;
  bool obscureText = false;
  final bool? filled;
  int? maxlength;
  List<TextInputFormatter>? inputFormatters;

  @override
  State<CommonTextField> createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller, //

      inputFormatters: widget.inputFormatters,
      style: TextStyle(
        color: Colors.black,
      ),
      cursorColor: Colors.black,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: widget.hintStyle,
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.suffixIcon,
        filled: widget.filled,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
      ),
      keyboardType: widget.keyboardType,
      validator: widget.validator,
      obscureText: widget.obscureText,
      maxLength: widget.maxlength,
    );
  }
}
