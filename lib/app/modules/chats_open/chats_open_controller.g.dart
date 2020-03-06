// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chats_open_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ChatsOpenController on _ChatsOpenControllerBase, Store {
  Computed<List<Chat>> _$chatsOpenComputed;

  @override
  List<Chat> get chatsOpen =>
      (_$chatsOpenComputed ??= Computed<List<Chat>>(() => super.chatsOpen))
          .value;

  @override
  String toString() {
    final string = 'chatsOpen: ${chatsOpen.toString()}';
    return '{$string}';
  }
}
