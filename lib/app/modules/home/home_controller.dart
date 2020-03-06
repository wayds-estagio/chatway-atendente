import 'package:chatway_atendente/app/repositories/chat_repository.dart';
import 'package:chatway_atendente/app/services/chat_service.dart';
import 'package:chatway_atendente/app/services/signalr/signalr_service.dart';
import 'package:chatway_atendente/app/shared/models/chat_model.dart';
import 'package:chatway_atendente/app/shared/utils/const.dart';
import 'package:chatway_atendente/app/stores/chat_store.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  ChatStore _chatStore;
  @observable
  ChatRepository _chatRepository;
  @observable
  SignalrService _signalrService;
  @observable
  ChatService _chatService;

  _HomeControllerBase(
    this._chatStore,
    this._chatRepository,
    this._signalrService,
    this._chatService,
  ) {
    fetch();
  }

  @action
  Future fetch() async {
    List<Chat> chatsAttendeds =
        await _chatService.getAttendedChat(Consts.user.unidade, Consts.user.id);
    List<Chat> chatsOpen = await _chatService.getOpenChat(Consts.user.unidade);

    await _chatStore.setAttendedChat(chatsAttendeds);
    await _chatStore.setOpenChat(chatsOpen);
    _signalrService.createSignalRConnection();
  }
}
