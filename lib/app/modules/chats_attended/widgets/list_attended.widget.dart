import 'package:chatway_atendente/app/modules/chats_attended/chats_attended_controller.dart';
import 'package:chatway_atendente/app/shared/widgets/item_chat.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ListAttendedWidget extends StatelessWidget {
  final String tabKey;

  const ListAttendedWidget({Key key, this.tabKey}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Modular.get<ChatsAttendedController>();

    return RefreshIndicator(
      onRefresh: () async => await Future.delayed(const Duration(seconds: 2)),
      child: Observer(
        builder: (_) {
          if (controller.chatsAttended == null) {
            return SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: Container(
                padding: EdgeInsets.only(top: 50.0),
                child: Center(
                  child: CircularProgressIndicator(),
                ),
                //height: MediaQuery.of(context).size.height,
              ),
            );
          }

          return ListView.builder(
            key: PageStorageKey(tabKey),
            shrinkWrap: true,
            itemCount: controller.chatsAttended.length,
            itemBuilder: (_, index) {
              var item = controller.chatsAttended[index];

              return ItemChatWidget(
                id: item.id,
                index: index.toString(),
                message:
                    item.mensagens.isEmpty ? "" : item.mensagens.first.content,
                newMessages: item.mensagens.isEmpty ? 0 : item.mensagens.length,
                time: "00:00",
                title: item.motorista,
                function: () {},
              );
            },
          );
        },
      ),
    );
  }
}
