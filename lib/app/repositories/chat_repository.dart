import 'package:chatway_atendente/app/shared/models/chat_model.dart';
import 'package:chatway_atendente/app/shared/utils/api_response.dart';
import 'package:chatway_atendente/app/shared/utils/const.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';

class ChatRepository extends Disposable {
  @override
  void dispose() {}

  static Future<ApiResponse<List<Chat>>> getOpenChat(String unidade) async {
    try {
      Dio dio = Dio();

      dio.options.baseUrl = "${Consts.baseURL}";
      dio.options.connectTimeout = 5000;
      dio.options.receiveTimeout = 5000;
      dio.options.headers['content-Type'] = 'application/json';

      var response = await dio.get("/api/v1/chat/pendentes/$unidade");

      print(
          '> ChatApi getChatPendente: Response status: ${response.statusCode}');
      //print('> ChatApi getChetPendente: Response body: ${response.data}');

      if (response.statusCode == 200) {
        var chats = List<Chat>();
        response.data.forEach((v) {
          chats.add(Chat.fromJson(v));
        });

        return ApiResponse.ok(chats, "ChatApi: getChatPendente help sucess");
      }

      return ApiResponse.error("error");
    } catch (error, exception) {
      print("ChatApi: Error in home need help > $error > $exception");

      return ApiResponse.error("ChatApi: Home need help error");
    }
  }

  static Future<ApiResponse<List<Chat>>> getAttendedChat(
      String unidade, String atendente) async {
    try {
      Dio dio = Dio();

      dio.options.baseUrl = "${Consts.baseURL}";
      dio.options.connectTimeout = 5000;
      dio.options.receiveTimeout = 5000;
      dio.options.headers['content-Type'] = 'application/json';

      var response =
          await dio.get("/api/v1/chat/atendidos/$unidade/$atendente");

      print(
          '> ChatApi getChatAtendidos: Response status: ${response.statusCode}');
      //print('> ChatApi getChatAtendidos: Response body: ${response.data}');

      if (response.statusCode == 200) {
        var chats = List<Chat>();
        response.data.forEach((v) {
          chats.add(Chat.fromJson(v));
        });

        return ApiResponse.ok(chats, "ChatApi: Home need help sucess");
      }

      return ApiResponse.error("error");
    } catch (error, exception) {
      print("ChatApi: Error in home getChatAtendidos > $error > $exception");

      return ApiResponse.error("ChatApi: Home need help error");
    }
  }

  static Future<ApiResponse<Chat>> getChat(String chatId) async {
    try {
      Dio dio = Dio();

      dio.options.baseUrl = "${Consts.baseURL}";
      dio.options.connectTimeout = 3000;
      dio.options.receiveTimeout = 3000;
      dio.options.headers['content-Type'] = 'application/json';

      var response = await dio.get("/api/v1/chat/$chatId");

      print('> ChatApi getChat: Response status: ${response.statusCode}');
      //print('> ChatApi getChetPendente: Response body: ${response.data}');

      if (response.statusCode == 200) {
        Chat chat = Chat.fromJson(response.data);

        return ApiResponse.ok(chat, "ChatApi: getChat need help sucess");
      }

      return ApiResponse.error("error");
    } catch (error, exception) {
      print("ChatApi: Error in home getChat > $error > $exception");

      return ApiResponse.error("ChatApi: getChat need help error");
    }
  }
}
