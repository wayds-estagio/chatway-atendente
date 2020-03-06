import 'package:chatway_atendente/app/shared/models/chat_model.dart';
import 'package:chatway_atendente/app/stores/chat_store.dart';
import 'package:mobx/mobx.dart';

part 'chats_open_controller.g.dart';

class ChatsOpenController = _ChatsOpenControllerBase with _$ChatsOpenController;

abstract class _ChatsOpenControllerBase with Store {
  ChatStore _chatStore;

  _ChatsOpenControllerBase(this._chatStore);

  @computed
  List<Chat> get chatsOpen => _chatStore.chatsOpen;

  selectChat(Chat chat) {
    _chatStore.openChatToAttendedChat(chat);
  }
}
