import 'package:chatway_atendente/app/services/chat_service.dart';
import 'package:chatway_atendente/app/services/signalr/signalr_service.dart';
import 'package:chatway_atendente/app/shared/models/chat_model.dart';
import 'package:chatway_atendente/app/shared/utils/const.dart';
import 'package:chatway_atendente/app/stores/chat_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'chats_open_controller.g.dart';

class ChatsOpenController = _ChatsOpenControllerBase with _$ChatsOpenController;

abstract class _ChatsOpenControllerBase with Store {
  ChatStore _chatStore;
  ChatService _chatService;
  SignalrService _signalrService;

  @observable
  bool loading = false;

  _ChatsOpenControllerBase(
      this._chatStore, this._chatService, this._signalrService);

  @computed
  List<Chat> get chatsOpen => _chatStore.chatsOpen;

  selectChat(Chat chat) {
    _chatStore.openChatToAttendedChat(chat);
    _signalrService.sendChatAttendant(chat.id, Consts.user);

    Modular.to.pushNamed("/home/chatsAttended/chat/${chat.id}");
  }

  @action
  setLoading(bool value) => loading = value;

  @computed
  bool get isLoading => loading;

  @action
  Future refreshChatsOpen() async {
    setLoading(true);
    List<Chat> openChats = await _chatService.getOpenChat(Consts.user.unidade);
    await _chatStore.setOpenChat(openChats);
    setLoading(false);
  }
}
