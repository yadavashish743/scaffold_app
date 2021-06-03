import 'package:flutter/material.dart';
import 'package:scaffold_app/view/BeautyView.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFE0E0E0),
        appBar: AppBar(
          centerTitle: true,
          title: Text('GreenTick Challenge',style: TextStyle(fontFamily: 'Roboto'),),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: new BeautyView(),
      ),
    );
  }
}





