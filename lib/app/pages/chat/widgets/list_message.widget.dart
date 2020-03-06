import 'package:chatway_atendente/app/shared/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../chat_controller.dart';
import 'item_message.widget.dart';

class ListMessage extends StatelessWidget {
  final String chatId;

  const ListMessage({Key key, this.chatId}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Modular.get<ChatController>();

    print(">> List----");
    print(controller.listChats[0].mensagens[0].content);

    controller.listChats[0].mensagens[0].content = "CLOSE CHATS";
    print(controller.listChats[0].mensagens[0].content);
    print(">> List----");

    return Flexible(
      flex: 1,
      child: Observer(
        builder: (_) {
          if (controller.listChats == null) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                CircularProgressIndicator(),
              ],
            );
          }

          var list =
              controller.listChats.firstWhere((chat) => chat.id == chatId);

          return ListView.builder(
            reverse: true,
            itemCount: list.mensagens.length,
            itemBuilder: (context, index) {
              var item = list.mensagens[index];

              return ItemMessage(
                content: item.content,
                timestamp: item.time,
                isYou: Consts.userAtendente.id == item.sender,
                isRead: item.isRead,
                isSent: item.isSent,
                fontSize: 16.0,
              );
            },
          );
        },
      ),
    );
  }
}
