import 'package:flutter/material.dart';

class CommonAcccountSettingContent extends StatefulWidget {
   CommonAcccountSettingContent({Key? key,this.title,this.text}) : super(key: key);

  String? title;
  String? text;

  @override
  State<CommonAcccountSettingContent> createState() => _CommonAcccountSettingContentState();
}

class _CommonAcccountSettingContentState extends State<CommonAcccountSettingContent> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title.toString(),
          style: const TextStyle(
              fontSize: 14,
              color: Color(0xff383333),
              fontFamily: "regular",
              fontWeight: FontWeight.w600),
        ),
        Text(
    widget.text.toString(),
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xff383333),
            fontFamily: "regular",
          ),
        )
      ],
    );
  }
}
