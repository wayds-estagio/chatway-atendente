import 'package:chatway_atendente/app/repositories/chat_repository.dart';
import 'package:chatway_atendente/app/services/signalr/signalr_service.dart';
import 'package:chatway_atendente/app/shared/models/chat_model.dart';
import 'package:chatway_atendente/app/shared/models/message_model.dart';
import 'package:chatway_atendente/app/shared/utils/const.dart';
import 'package:chatway_atendente/app/stores/chat_store.dart';
import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';

part 'chat_controller.g.dart';

class ChatController = _ChatControllerBase with _$ChatController;

abstract class _ChatControllerBase with Store {
  @observable
  ChatStore _chatStore;
  @observable
  ChatRepository _chatRepository;
  @observable
  SignalrService _signalrService;
  @observable
  TextEditingController inputMessageController = TextEditingController();
  @observable
  String inputMessage = '';
  @observable
  bool isAttended = false;

  _ChatControllerBase(
      this._chatStore, this._chatRepository, this._signalrService);

  @computed
  List<Chat> get listChats => _chatStore.chatsAttended;

  @action
  setInputMessage(String value) async => inputMessage = value;

  @action
  clearInputMessage() {
    inputMessageController.clear();
    inputMessage = "";
  }

  @action
  setIsAttended(bool value) => isAttended = value;

  @action
  sendMessage(String textMessage, String chatId) {
    final message = Message(
      content: textMessage,
      sender: Consts.user.id,
      receiver: chatId,
      time: DateTime.now(),
    );

    _chatStore.addMessageAttended(message);
    _signalrService.sendMessage(message, chatId);

    clearInputMessage();
  }
}
