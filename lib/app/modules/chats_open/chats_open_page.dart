import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'chats_open_controller.dart';
import 'widgets/list_open.widget.dart';

class ChatsOpenPage extends StatefulWidget {
  final String title;
  final String tabKey;

  const ChatsOpenPage({Key key, this.title = "ChatsOpen", this.tabKey})
      : super(key: key);

  @override
  _ChatsOpenPageState createState() => _ChatsOpenPageState();
}

class _ChatsOpenPageState
    extends ModularState<ChatsOpenPage, ChatsOpenController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListOpenWidget(tabKey: widget.tabKey),
    );
  }
}
