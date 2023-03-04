import 'package:flutter/material.dart';

class CommonButton extends StatefulWidget {
  CommonButton(
      {Key? key,
      required this.text,
      required this.height,
      required this.width,
      this.fillcolor,
      this.style,
      this.border,
      this.logoIcon,
        this.borderRadius,
      })
      : super(key: key);

  final String text;
  final double height, width;
  final Color? fillcolor;
  final Border? border;
  final TextStyle? style;
  final Image? logoIcon;
  final BorderRadius? borderRadius;


  @override
  State<CommonButton> createState() => _CommonButtonState();
}

class _CommonButtonState extends State<CommonButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          borderRadius: widget.borderRadius,
          // borderRadius: BorderRadius.circular(10),
          color: widget.fillcolor,
        ),

         child: Center(child: Text(widget.text,style:widget.style,)),
        );
  }
}
