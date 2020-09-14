import 'package:flutter/material.dart';
import 'package:nikex/big_card.dart';
import 'package:nikex/nike_bottom_navigation_bar.dart';
import 'package:nikex/nike_detail_page.dart';

import 'data.dart';
import 'large_card.dart';
import 'nike_app_bar.dart';

class NikeHome extends StatefulWidget {
  @override
  _NikeHomeState createState() => _NikeHomeState();
}

class _NikeHomeState extends State<NikeHome> {
  int _currentIndex = 1 - 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F8F8),
      appBar: NikeAppBar(
        titles: mainMenu,
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
              child: Image.asset("assets/icons/menu.png"),
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
              child: Image.asset("assets/icons/search.png"),
            ),
          ),
        ),
        title: Image.asset("assets/images/logo.png"),
        backgroundColor: Color(0xFFF8F8F8),
        //backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3 + 12,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: mainMenuShoes.length,
                itemBuilder: (context, pos) {
                  return Padding(
                    padding: EdgeInsets.all(12),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return NikeDetailPage(
                              shoe: mainMenuShoes[pos],
                            );
                          }));
                        },
                        child: BigCard(
                          shoe: mainMenuShoes[pos],
                          id: pos,
                        ),
                      ),
                      width: (MediaQuery.of(context).size.width / 2) - 25,
                      height: (MediaQuery.of(context).size.height / 3) - 12,
                    ),
                  );
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DefaultTabController(
                length: secondaryMenu.length,
                child: TabBar(
                  isScrollable: true,
                  labelColor: Color(0xFF141414),
                  indicatorColor: Colors.transparent,
                  unselectedLabelColor: Color(0xFFC2C2C2),
                  unselectedLabelStyle:
                      TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  labelStyle:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  tabs: List.generate(secondaryMenu.length,
                      (index) => Tab(text: secondaryMenu[index])),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Text(
                  "See All",
                  style: TextStyle(
                    color: Color(0xFFEF0021),
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height / 3 - 29,
            child: ListView.builder(
              itemCount: secondaryMenuShoes.length,
              itemBuilder: (context, pos) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  width: (MediaQuery.of(context).size.width) - 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return NikeDetailPage(
                          shoe: secondaryMenuShoes[pos],
                        );
                      }));
                    },
                    child: LargeCard(
                      shoe: secondaryMenuShoes[pos],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: NikeBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int pos) {
          _currentIndex = pos;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.mail_outline),
            title: Text('Mail'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text('Favorite'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.settings),
            title: new Text('Settings'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            title: Text('Profile'),
          )
        ],
      ),
    );
  }
}
