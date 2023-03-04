import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonButtonWithIcon extends StatefulWidget {
  CommonButtonWithIcon({Key? key,
    required this.text,
    required this.height,
    required this.width,
    this.fillcolor,
    this.style,
    this.border,
    this.imgIcon}) : super(key: key);

  final String text;
  final double height,width;
  final Color? fillcolor;
  final Border? border;
  final TextStyle? style;
  final String? imgIcon;



  @override
  State<CommonButtonWithIcon> createState() => _CommonButtonWithIconState();
}

class _CommonButtonWithIconState extends State<CommonButtonWithIcon> {
  @override
  Widget build(BuildContext context) {

    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: widget.fillcolor,
        border: widget.border,
      ),

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Image.asset(widget.imgIcon.toString()),
            SizedBox(width: 45,),
             Text(widget.text,style:widget.style,),
          ],
        ),
      ),

    );
  }
}
