import 'package:flutter/material.dart';

class NikeBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final List<BottomNavigationBarItem> items;
  final ValueChanged<int> onTap;
  NikeBottomNavigationBar({this.currentIndex, this.items, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: List.generate(items.length, (index) {
          if (index != currentIndex) {
            return GestureDetector(
              onTap: () => onTap(index),
              child: IconTheme(
                  data: IconThemeData(color: Color(0xFFA7A7A7)),
                  child: items[index].icon),
            );
          } else {
            return GestureDetector(
              onTap: () => onTap(index),
              child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.1),
                  decoration: new BoxDecoration(
                    color: Color(0xDDEF0021),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(18.0)),
                  ),
                  child: Row(
                    children: [
                      IconTheme(
                          data: IconThemeData(color: Colors.white),
                          child: items[index].icon),
                      DefaultTextStyle(
                        style: TextStyle(color: Colors.white, fontSize: 12),
                        child: items[index].title,
                      ),
                    ],
                  )),
            );
          }
        }),
      ),
    );
  }
}
