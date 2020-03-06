import 'package:chatway_atendente/app/pages/chat/chat_controller.dart';
import 'package:chatway_atendente/app/pages/chat/chat_page.dart';
import 'package:chatway_atendente/app/repositories/chat_repository.dart';
import 'package:chatway_atendente/app/services/signalr/signalr_service.dart';
import 'package:chatway_atendente/app/stores/chat_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:chatway_atendente/app/modules/chats_attended/chats_attended_page.dart';

class ChatsAttendedModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ChatController(i.get<ChatStore>(), i.get<ChatRepository>(),
            i.get<SignalrService>())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => ChatsAttendedPage()),
        Router("/chat/:id",
            child: (_, args) => ChatPage(
                  data: args.params["id"],
                ),
            transition: TransitionType.defaultTransition),
      ];

  static Inject get to => Inject<ChatsAttendedModule>.of();
}
