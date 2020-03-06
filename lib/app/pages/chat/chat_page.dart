import 'package:flutter/material.dart';

import 'widgets/app_bar_chat.widget.dart';
import 'widgets/input_message.widget.dart';
import 'widgets/list_message.widget.dart';

class ChatPage extends StatefulWidget {
  final String title;
  final String data;

  const ChatPage({Key key, this.title = "Chat", this.data}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarChat(),
      body: chatPage(context),
    );
  }

  Widget chatPage(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        ListMessage(
          chatId: widget.data,
        ),
        InputTextMessage(chatId: widget.data),
      ],
    );
  }
}
