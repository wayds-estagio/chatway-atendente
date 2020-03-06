import 'package:flutter/material.dart';

class AppBarHome extends StatelessWidget with PreferredSizeWidget {
  final TabController tabController;

  AppBarHome({Key key, @required this.tabController}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Chat ",
            style: TextStyle(
              fontFamily: "Helvetica",
              fontSize: 24,
            ),
          ),
          Image.asset(
            'assets/images/logo-way-2.png',
            fit: BoxFit.contain,
            height: 24,
          ),
        ],
      ),
      bottom: TabBar(
        indicatorWeight: 4,
        labelStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        controller: tabController,
        indicatorColor: Colors.white,
        tabs: <Widget>[
          Tab(
            text: "Atendidos",
          ),
          Tab(
            text: "Em aberto",
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight * 2);
}
