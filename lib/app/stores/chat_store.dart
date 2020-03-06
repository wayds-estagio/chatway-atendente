import 'package:chatway_atendente/app/shared/models/chat_model.dart';
import 'package:chatway_atendente/app/shared/models/message_model.dart';
import 'package:mobx/mobx.dart';

part 'chat_store.g.dart';

class ChatStore = _ChatStoreBase with _$ChatStore;

abstract class _ChatStoreBase with Store {
  @observable
  ObservableList<Chat> _openChats = ObservableList<Chat>();

  @computed
  List<Chat> get chatsOpen => _openChats;

  @action
  Future setOpenChat(List<Chat> value) async =>
      _openChats = value.asObservable();

  @action
  openChatToAttendedChat(Chat value) {
    var chat = getOpenChat(value);

    addAttendedChat(chat);
    removeOpenChat(chat);
  }

  @action
  openChatToAttendedChatById(String value) {
    Chat chat = getChatOpenById(value);

    addAttendedChat(chat);
    removeOpenChat(chat);
  }

  @action
  addOpenChat(Chat value) => _openChats.insert(0, value);

  @action
  removeOpenChat(Chat value) => _openChats.removeWhere((item) => item == value);

  @action
  removeOpenChatById(String value) =>
      _openChats.removeWhere((item) => item.id == value);

  @action
  Chat getOpenChat(Chat value) =>
      _openChats.firstWhere((chat) => chat == value);

  @action
  Chat getChatOpenById(String value) =>
      _openChats.firstWhere((chat) => chat.id == value);

  @action
  addMessageOpen(Message message) {
    var chat = getChatOpenById(message.receiver);
    removeOpenChat(chat);
    chat.mensagens.insert(0, message);
    addOpenChat(chat);
  }

  // ? ------------------------- SignalR Functions -------------------------
  @action
  receiveMessageOpen(List<Object> data) {
    final receiveMessage = Message.fromJson(data[0]);

    addMessageOpen(receiveMessage);
  }

  @action
  receiveNewChatOpen(List<Object> data) {
    final receiveChat = Chat.fromJson(data[0]);

    addOpenChat(receiveChat);
  }
  // ? ----------------------- End SignalR Functions -----------------------

  // !----------------------------------------------------------------------
  @observable
  ObservableList<Chat> _attendedChats = ObservableList<Chat>();

  @computed
  List<Chat> get chatsAttended => _attendedChats.asObservable();

  @action
  Future setAttendedChat(List<Chat> value) async =>
      _attendedChats = value.asObservable();

  @action
  addAttendedChat(Chat value) => _attendedChats.insert(0, value);

  @action
  removeAttendedChat(Chat value) =>
      _attendedChats.removeWhere((item) => item == value);

  @action
  removeAttendedChatId(String value) =>
      _attendedChats.removeWhere((item) => item.id == value);

  @action
  Chat getChatAttended(Chat value) =>
      _attendedChats.firstWhere((chat) => chat == value);

  @action
  Chat getChatAttendedById(String value) =>
      _attendedChats.firstWhere((chat) => chat.id == value);

  @action
  addMessageAttended(Message message) {
    var chat = getChatAttendedById(message.receiver);
    removeAttendedChat(chat);
    chat.mensagens.insert(0, message);
    addAttendedChat(chat);
  }

  // ? ------------------------- SignalR Functions -------------------------
  @action
  receiveMessageAttendance(List<Object> data) {
    final receiveMessage = Message.fromJson(data[0]);

    addMessageAttended(receiveMessage);
  }
  // ? ----------------------- End SignalR Functions -----------------------

}
