import 'package:chatway_atendente/app/repositories/chat_repository.dart';
import 'package:chatway_atendente/app/shared/models/chat_model.dart';
import 'package:chatway_atendente/app/shared/utils/api_response.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ChatService extends Disposable {
  @override
  void dispose() {}

  Future getOpenChat(String unidade) async {
    //await Future.delayed(const Duration(seconds: 2));
    List<Chat> chats = List<Chat>();

    ApiResponse response = await ChatRepository.getOpenChat(unidade);

    if (response.ok) {
      chats = response.result;

      return chats;
    } else
      return chats;
  }

  Future getAttendedChat(String unidade, String attendantId) async {
    //await Future.delayed(const Duration(seconds: 2));
    List<Chat> chats = List<Chat>();

    ApiResponse response =
        await ChatRepository.getAttendedChat(unidade, attendantId);

    if (response.ok) {
      chats = response.result;

      return chats;
    } else
      return chats;
  }
}
