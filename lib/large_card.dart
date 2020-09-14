import 'package:flutter/material.dart';
import 'package:nikex/shoe.dart';

class LargeCard extends StatelessWidget {
  LargeCard({this.shoe});
  final Shoe shoe;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      margin: EdgeInsets.all(0),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  shoe.imagePath,
                  height: 90,
                  width: constraints.maxWidth * 4 / 8,
                ),
                Container(
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        shoe.title.substring(0, 16),
                        style: TextStyle(
                          color: Color(0xFF474747),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "\$${shoe.discount} off",
                        style: TextStyle(
                          color: Color(0xFFC7C3C3),
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                      Container(
                          width: constraints.maxWidth * 4 / 8 - 22,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$${shoe.price}",
                                style: TextStyle(
                                  color: Color(0xFFEF0021),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
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
                                    child: Image.asset(
                                        "assets/icons/add_to_basket.png"),
                                  ),
                                ),
                              ),
                            ],
                          ))
                    ],
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
