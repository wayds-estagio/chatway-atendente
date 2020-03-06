import 'package:chatway_atendente/app/shared/models/message_model.dart';
import 'package:chatway_atendente/app/shared/models/user_model.dart';
import 'package:chatway_atendente/app/shared/utils/const.dart';
import 'package:chatway_atendente/app/stores/chat_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:signalr_client/signalr_client.dart';

class SignalrService extends Disposable {
  @override
  void dispose() {}

  HubConnection connection;
  ChatStore _chatStore;

  SignalrService(this._chatStore);

  Future<void> createSignalRConnection() async {
    connection =
        HubConnectionBuilder().withUrl("${Consts.baseURL}/ChatWay").build();

    await connection.start();
    connection.invoke("LinkChatToGroup", args: ["Atendente"]);
    for (var chat in _chatStore.chatsAttended) {
      connection.invoke("LinkChatToGroup", args: [chat.id]);
    }

    connection.onclose((error) => print("Connection Signalr Atendente Closed"));

    connection.on("ReceiveDebug", (data) {
      print("> ReceiveDebug ${data.toString()}");
    });

    connection.on("ReceiveMessageOpen", (data) {
      print("> ReceiveMessageOpen ${data[0].toString()}");
      _chatStore.receiveMessageOpen(data);
    });

    connection.on("ReceiveNewChatOpen", (data) async {
      print("> ReceiveNewChat ${data.toString()}");

      _chatStore.receiveNewChatOpen(data);
    });

    connection.on("ReceiveMessageAttendance", (data) {
      print("> ReceiveMessageAttendance ${data[0].toString()}");
      _chatStore.receiveMessageAttendance(data);
    });
  }

  Future sendMessage(Message message, String chatId) async =>
      await connection.invoke("Send", args: [message, chatId]);

  Future sendChatAttendant(String chatId, User attendant) async {
    await connection.invoke("LinkChatToGroup", args: [chatId]);
    await connection.invoke("sendChatAttendant", args: [chatId, attendant]);
  }

  Future removeSignalRConnection() async {
    await connection.stop();
  }
}
