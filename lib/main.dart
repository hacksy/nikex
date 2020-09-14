import 'package:flutter/material.dart';
import 'nike_home.dart';

void main() {
  runApp(NikeApp());
}

class NikeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //debugShowMaterialGrid: true,
      home: NikeHome(),
      theme: ThemeData(
        fontFamily: 'SegoeUI',
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
