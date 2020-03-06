import 'package:chatway_atendente/app/shared/models/chat_model.dart';
import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';

part 'chat_controller.g.dart';

class ChatController = _ChatControllerBase with _$ChatController;

abstract class _ChatControllerBase with Store {
  List<Chat> chats;
  @observable
  TextEditingController inputMessageController = TextEditingController();
  @observable
  String inputMessage = '';

  _ChatControllerBase(this.chats);

  @computed
  List<Chat> get listChats => chats;

  @action
  setInputMessage(String value) async => inputMessage = value;

  @action
  clearInputMessage() {
    inputMessageController.clear();
    inputMessage = "";
  }
}
