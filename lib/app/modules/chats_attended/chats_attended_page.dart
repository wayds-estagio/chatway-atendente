import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'chats_attended_controller.dart';
import 'widgets/list_attended.widget.dart';

class ChatsAttendedPage extends StatefulWidget {
  final String title;
  final String tabKey;

  const ChatsAttendedPage({Key key, this.title = "ChatsAttended", this.tabKey})
      : super(key: key);

  @override
  _ChatsAttendedPageState createState() => _ChatsAttendedPageState();
}

class _ChatsAttendedPageState
    extends ModularState<ChatsAttendedPage, ChatsAttendedController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListAttendedWidget(tabKey: widget.tabKey),
    );
  }
}
