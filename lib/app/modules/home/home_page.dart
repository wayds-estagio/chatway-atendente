import 'package:chatway_atendente/app/modules/chats_attended/chats_attended_page.dart';
import 'package:chatway_atendente/app/modules/chats_open/chats_open_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          controller: _tabController,
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
      ),
      body: TabBarView(
        dragStartBehavior: DragStartBehavior.down,
        controller: _tabController,
        children: <Widget>[
          ChatsAttendedPage(tabKey: "key1"),
          ChatsOpenPage(tabKey: "key2"),
        ],
      ),
    );
  }
}
