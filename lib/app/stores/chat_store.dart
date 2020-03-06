import 'package:chatway_atendente/app/shared/models/chat_model.dart';
import 'package:mobx/mobx.dart';

part 'chat_store.g.dart';

class ChatStore = _ChatStoreBase with _$ChatStore;

abstract class _ChatStoreBase with Store {
  @observable
  ObservableList<Chat> openChats;
  ObservableList<Chat> attendedChats;

  @computed
  List<Chat> get listOpenChats => openChats;

  @computed
  List<Chat> get listAttendedChats => attendedChats;

  @action
  addOpenChat(Chat value) {
    openChats.insert(0, value);
  }

  @action
  addAttendedChat(Chat value) {
    attendedChats.insert(0, value);
  }

  @action
  removeOpenChat(Chat value) {
    openChats.removeWhere((item) => item == value);
  }

  @action
  removeAttendedChat(Chat value) {
    attendedChats.removeWhere((item) => item == value);
  }

  @action
  openChatToAttendedChat(Chat value) {
    Chat chat = openChats.firstWhere((item) => item == value);

    addAttendedChat(chat);
    removeOpenChat(chat);
  }

  @action
  removeOpenChatId(String value) {
    openChats.removeWhere((item) => item.id == value);
  }

  @action
  removeAttendedChatId(String value) {
    attendedChats.removeWhere((item) => item.id == value);
  }

  @action
  openChatToAttendedChatId(String value) {
    Chat chat = openChats.firstWhere((item) => item.id == value);

    addAttendedChat(chat);
    removeOpenChat(chat);
  }
}
