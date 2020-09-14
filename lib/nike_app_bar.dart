import 'package:flutter/material.dart';

class NikeAppBar extends StatelessWidget with PreferredSizeWidget {
  final Color backgroundColor;
  final Widget title;
  final Widget action;
  final Widget leading;
  final List<String> titles;
  NikeAppBar({
    this.backgroundColor,
    this.title,
    this.action,
    this.leading,
    this.titles,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTabController(
        // The number of tabs / content sections to display.
        length: titles.length,
        child: AppBar(
          automaticallyImplyLeading: true,
          bottom: titles.length > 0
              ? TabBar(
                  isScrollable: true,
                  labelColor: Color(0xFF141414),
                  indicatorColor: Colors.transparent,
                  unselectedLabelColor: Color(0xFFC2C2C2),
                  unselectedLabelStyle:
                      TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  labelStyle:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  tabs: List.generate(
                      titles.length, (index) => Tab(text: titles[index])),
                )
              : null,
          actions: [action],
          leading: GestureDetector(
            onTap: () async {
              Navigator.of(context).maybePop();
            },
            child: leading,
          ),
          centerTitle: true,
          elevation: 0,
          title: title,
          backgroundColor: backgroundColor,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity,
      kToolbarHeight + (titles.length > 0 ? kBottomNavigationBarHeight : 0));
}
