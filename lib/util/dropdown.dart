
import 'package:flutter/material.dart';

class DropdownTextField extends StatefulWidget {
   DropdownTextField({Key? key,this.hintText,this.hintStyle,this.validator,}) : super(key: key);

   String? hintText;
   TextStyle? hintStyle;
   String? Function(String?)? validator;



  @override
  State<DropdownTextField> createState() => _DropdownTextFieldState();
}

class _DropdownTextFieldState extends State<DropdownTextField> {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("USA",style: TextStyle(color: Colors.grey),),value: "USA"),
    DropdownMenuItem(child: Text("Canada",style: TextStyle(color: Colors.grey),),value: "Canada"),
    DropdownMenuItem(child: Text("Brazil",style: TextStyle(color: Colors.grey),),value: "Brazil"),
    DropdownMenuItem(child: Text("England",style: TextStyle(color: Colors.grey),),value: "England"),
  ];

  String? selectedValue = null;
  final _dropdownFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return  Form(

        key: _dropdownFormKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButtonFormField(


              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder:OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(10),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.white,

                  hintText: widget.hintText,
                  hintStyle: TextStyle(fontFamily: "regular"),

                ),
                 validator:widget.validator,

                dropdownColor: Colors.white,
                value: selectedValue,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedValue = newValue!;

                  }


                  );
                },

                   items: menuItems



     ),

          ],
        ));

  }
}
