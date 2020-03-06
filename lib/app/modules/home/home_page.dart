import 'package:chatway_atendente/app/modules/chats_attended/chats_attended_page.dart';
import 'package:chatway_atendente/app/modules/chats_open/chats_open_page.dart';
import 'package:chatway_atendente/app/modules/home/widgets/appbar_home.widget.dart';
import 'package:chatway_atendente/app/stores/chat_store.dart';
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
  ChatStore store = Modular.get<ChatStore>();

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarHome(tabController: _tabController),
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
