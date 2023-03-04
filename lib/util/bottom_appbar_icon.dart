import 'package:flutter/material.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  bool changeColor=true;




  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 60,
        child: Row(
            // mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // FlatButton(
              //   padding: EdgeInsets.all(10.0),
              //   onPressed: () {
              //     setState((){
              //       changeColor=!changeColor;
              //     });
              //
              //   },
              //   child: Column(
              //     children: <Widget>[Icon(Icons.home_outlined,color: changeColor?Colors.grey:Colors.black),
              //       Text('Home',style: TextStyle(color:changeColor? Colors.grey:Colors.black),)],
              //   ),
              // ),
              //
              // FlatButton(
              //   padding: EdgeInsets.all(10.0),
              //   onPressed: () {},
              //   child: Column(
              //     children: <Widget>[Icon(Icons.location_on_outlined,color: Colors.grey,), Text('Projects',style: TextStyle(color: Colors.grey),)],
              //   ),
              // ),
              //
              // FlatButton(
              //   padding: EdgeInsets.all(10.0),
              //   onPressed: () {},
              //   child: Column(
              //     children: <Widget>[Icon(Icons.event_note_rounded,color: Colors.grey,), Text('Entries',style: TextStyle(color: Colors.grey),)],
              //   ),
              // ),
              // FlatButton(
              //   padding: EdgeInsets.all(10.0),
              //   onPressed: () {},
              //   child: Column(
              //     children: <Widget>[Icon(Icons.settings,color: Colors.grey,), Text('Settings',style: TextStyle(color: Colors.grey),)],
              //   ),
              //)
            ]),
      ),

    );
  }
}
