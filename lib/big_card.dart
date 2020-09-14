import 'package:flutter/material.dart';

import 'shoe.dart';

class BigCard extends StatelessWidget {
  final Shoe shoe;
  final int id;
  BigCard({this.shoe, this.id});
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      margin: EdgeInsets.all(0),
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: LayoutBuilder(builder: (context, constraints) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        shoe.imagePath,
                        width: constraints.maxWidth * .8,
                        height: constraints.maxHeight * .6,
                      ),
                    ),
                    Positioned(
                      top: 6,
                      child: Text(
                        (id + 1).toString().padLeft(2, "0"),
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color(0xFFE1E1E1),
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 38,
                  child: Text(
                    shoe.title,
                    style: TextStyle(
                      color: Color(0xFF474747),
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$${shoe.price.toString()}",
                      style: TextStyle(
                        color: Color(0xFFEF0021),
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    Align(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Container(
                          width: 25,
                          height: 25,
                          decoration: new BoxDecoration(
                            color: Color(0xFFEF0021),
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
                          child: Image.asset("assets/icons/add_to_basket.png"),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          })),
    );
  }
}
