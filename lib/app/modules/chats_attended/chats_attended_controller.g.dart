// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chats_attended_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ChatsAttendedController on _ChatsAttendedControllerBase, Store {
  Computed<List<Chat>> _$chatsAttendedComputed;

  @override
  List<Chat> get chatsAttended => (_$chatsAttendedComputed ??=
          Computed<List<Chat>>(() => super.chatsAttended))
      .value;

  @override
  String toString() {
    final string = 'chatsAttended: ${chatsAttended.toString()}';
    return '{$string}';
  }
}
