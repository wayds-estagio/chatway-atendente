import 'package:chatway_atendente/app/services/chat_service.dart';
import 'package:chatway_atendente/app/shared/models/chat_model.dart';
import 'package:chatway_atendente/app/shared/utils/const.dart';
import 'package:chatway_atendente/app/stores/chat_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'chats_attended_controller.g.dart';

class ChatsAttendedController = _ChatsAttendedControllerBase
    with _$ChatsAttendedController;

abstract class _ChatsAttendedControllerBase with Store {
  ChatStore _chatStore;
  ChatService _chatService;
  @observable
  bool loading = false;

  _ChatsAttendedControllerBase(this._chatStore, this._chatService);

  @computed
  List<Chat> get chatsAttended => _chatStore.chatsAttended;

  selectChat(Chat chat) {
    Modular.to.pushNamed("/home/chatsAttended/chat/${chat.id}");
  }

  @action
  setLoading(bool value) => loading = value;

  @computed
  bool get isLoading => loading;

  Future refreshChatsAttended() async {
    setLoading(true);
    List<Chat> chatsAttendeds =
        await _chatService.getAttendedChat(Consts.user.unidade, Consts.user.id);
    await _chatStore.setAttendedChat(chatsAttendeds);
    setLoading(true);
  }
}
