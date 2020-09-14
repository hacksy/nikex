import 'package:flutter/material.dart';
import 'package:nikex/nike_app_bar.dart';

import 'nike_detail_content.dart';
import 'shoe.dart';

class NikeDetailPage extends StatelessWidget {
  NikeDetailPage({this.shoe});
  final Shoe shoe;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F8F8),
      appBar: NikeAppBar(
        titles: [],
        leading: Align(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              width: 45,
              height: 45,
              decoration: new BoxDecoration(
                color: Color(0xFFEF0021),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(.2),
                      offset: Offset(5, 5),
                      blurRadius: 1,
                      spreadRadius: 1)
                ],
              ),
              child: Image.asset("assets/icons/back.png"),
            ),
          ),
        ),
        action: Align(
          child: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Container(
              width: 45,
              height: 45,
              decoration: new BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(.2),
                      offset: Offset(5, 5),
                      blurRadius: 1,
                      spreadRadius: 1)
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(8.0),
                ),
              ),
              child: Image.asset("assets/icons/heart.png"),
            ),
          ),
        ),
        title: Image.asset("assets/images/logo.png"),
        backgroundColor: Color(0xFFF8F8F8),
        //backgroundColor: Colors.red,
      ),
      body: Container(
          child: Column(
        children: [
          SizedBox(height: 55),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 3 / 4,
              height: MediaQuery.of(context).size.height / 2 - 130,
              child: Image.asset(
                shoe.imagePath,
                scale: 1 / 3,
              ),
            ),
          ),
          SizedBox(height: 24),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2 - 25,
            decoration: new BoxDecoration(
              color: Color(0xFFEF0021),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(38.0)),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(.2),
                    offset: Offset(11, -5),
                    blurRadius: 1,
                    spreadRadius: 1)
              ],
            ),
            child: Card(
              child: NikeDetailContent(shoe: shoe),
              margin: EdgeInsets.all(0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(38.0)),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
