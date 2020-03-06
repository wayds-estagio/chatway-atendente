import 'package:chatway_atendente/app/modules/chats_attended/chats_attended_controller.dart';
import 'package:chatway_atendente/app/shared/widgets/fade_animation.dart';
import 'package:chatway_atendente/app/shared/widgets/item_chat.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';

class ListAttendedWidget extends StatelessWidget {
  final String tabKey;

  const ListAttendedWidget({Key key, this.tabKey}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Modular.get<ChatsAttendedController>();

    return RefreshIndicator(
      onRefresh: controller.refreshChatsAttended,
      child: Observer(
        builder: (_) {
          if (controller.isLoading) {
            return Container();
          }

          return ListView.builder(
            key: PageStorageKey(tabKey),
            shrinkWrap: true,
            itemCount: controller.chatsAttended.length,
            itemBuilder: (_, index) {
              var item = controller.chatsAttended[index];

              return FadeAnimation(
                delay: 0.2,
                child: ItemChatWidget(
                  id: item.id,
                  index: index.toString(),
                  message: item.mensagens.isEmpty
                      ? ""
                      : item.mensagens.first.content,
                  newMessages:
                      item.mensagens.isEmpty ? 0 : item.mensagens.length,
                  time: DateFormat('HH:mm').format(item.mensagens.first.time),
                  title: item.motorista,
                  function: () async {
                    controller.selectChat(item);
                  },
                ),
                tXBegin: -130.0,
                tXEnd: 0.0,
              );
            },
          );
        },
      ),
    );
  }
}
