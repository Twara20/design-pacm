import 'package:flutter/cupertino.dart';

class CommonText extends StatefulWidget {
  var icon;

  CommonText({Key? key, required this.text,}) : super(key: key);
  late final String text;


  @override
  State<CommonText> createState() => _CommonTextState();
}

class _CommonTextState extends State<CommonText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: TextStyle(
        fontFamily: "semibold",
        fontSize: 13,
      ),
    );
  }
}
