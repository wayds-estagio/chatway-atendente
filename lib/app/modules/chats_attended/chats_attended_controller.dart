import 'package:chatway_atendente/app/shared/models/chat_model.dart';
import 'package:chatway_atendente/app/stores/chat_store.dart';
import 'package:mobx/mobx.dart';

part 'chats_attended_controller.g.dart';

class ChatsAttendedController = _ChatsAttendedControllerBase
    with _$ChatsAttendedController;

abstract class _ChatsAttendedControllerBase with Store {
  ChatStore _chatStore;

  _ChatsAttendedControllerBase(this._chatStore);

  @computed
  List<Chat> get chatsAttended => _chatStore.chatsAttended;

  selectChat(String chatId) {
    // TO DO OpenChat with this id ;
  }
}
