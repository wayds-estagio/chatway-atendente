import 'package:chatway_atendente/app/shared/models/chat_model.dart';
import 'package:chatway_atendente/app/shared/models/message_model.dart';
import 'package:mobx/mobx.dart';

part 'chat_store.g.dart';

class ChatStore = _ChatStoreBase with _$ChatStore;

abstract class _ChatStoreBase with Store {
  @observable
  ObservableList<Chat> openChats = [
    Chat(
      id: "ChatId",
      atendente: "Atendente_01",
      atendenteId: "AtendenteId",
      motorista: "Motorista_01",
      motoristaId: "MotoristaId",
      unidade: "Unidade_01",
      concluido: false,
      mensagens: [
        Message(
          id: "MensagemId",
          type: "text",
          content: "OPEN CHATS",
          sender: "MotoristaId",
          receiver: "ChatIdReceiver",
          isRead: false,
          isSent: false,
          time: DateTime.parse("2020-02-28T11:59:44.975Z"),
        ),
      ],
      datacriacao: DateTime.parse("2020-02-28T11:59:44.975Z"),
    )
  ].asObservable();

  ObservableList<Chat> attendedChats = [
    Chat(
      id: "ChatId",
      atendente: "Atendente_01",
      atendenteId: "AtendenteId",
      motorista: "Motorista_01",
      motoristaId: "MotoristaId",
      unidade: "Unidade_01",
      concluido: false,
      mensagens: [
        Message(
          id: "MensagemId",
          type: "text",
          content: "OPEN ATTENDED",
          sender: "MotoristaId",
          receiver: "ChatIdReceiver",
          isRead: false,
          isSent: false,
          time: DateTime.parse("2020-02-28T11:59:44.975Z"),
        ),
      ],
      datacriacao: DateTime.parse("2020-02-28T11:59:44.975Z"),
    )
  ].asObservable();

  @computed
  List<Chat> get chatsOpen => openChats;

  @computed
  List<Chat> get chatsAttended => attendedChats;

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
