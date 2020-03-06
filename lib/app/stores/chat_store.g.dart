// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ChatStore on _ChatStoreBase, Store {
  Computed<List<Chat>> _$chatsOpenComputed;

  @override
  List<Chat> get chatsOpen =>
      (_$chatsOpenComputed ??= Computed<List<Chat>>(() => super.chatsOpen))
          .value;
  Computed<List<Chat>> _$chatsAttendedComputed;

  @override
  List<Chat> get chatsAttended => (_$chatsAttendedComputed ??=
          Computed<List<Chat>>(() => super.chatsAttended))
      .value;

  final _$openChatsAtom = Atom(name: '_ChatStoreBase.openChats');

  @override
  ObservableList<Chat> get openChats {
    _$openChatsAtom.context.enforceReadPolicy(_$openChatsAtom);
    _$openChatsAtom.reportObserved();
    return super.openChats;
  }

  @override
  set openChats(ObservableList<Chat> value) {
    _$openChatsAtom.context.conditionallyRunInAction(() {
      super.openChats = value;
      _$openChatsAtom.reportChanged();
    }, _$openChatsAtom, name: '${_$openChatsAtom.name}_set');
  }

  final _$_ChatStoreBaseActionController =
      ActionController(name: '_ChatStoreBase');

  @override
  dynamic addOpenChat(Chat value) {
    final _$actionInfo = _$_ChatStoreBaseActionController.startAction();
    try {
      return super.addOpenChat(value);
    } finally {
      _$_ChatStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic addAttendedChat(Chat value) {
    final _$actionInfo = _$_ChatStoreBaseActionController.startAction();
    try {
      return super.addAttendedChat(value);
    } finally {
      _$_ChatStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeOpenChat(Chat value) {
    final _$actionInfo = _$_ChatStoreBaseActionController.startAction();
    try {
      return super.removeOpenChat(value);
    } finally {
      _$_ChatStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeAttendedChat(Chat value) {
    final _$actionInfo = _$_ChatStoreBaseActionController.startAction();
    try {
      return super.removeAttendedChat(value);
    } finally {
      _$_ChatStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic openChatToAttendedChat(Chat value) {
    final _$actionInfo = _$_ChatStoreBaseActionController.startAction();
    try {
      return super.openChatToAttendedChat(value);
    } finally {
      _$_ChatStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeOpenChatId(String value) {
    final _$actionInfo = _$_ChatStoreBaseActionController.startAction();
    try {
      return super.removeOpenChatId(value);
    } finally {
      _$_ChatStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeAttendedChatId(String value) {
    final _$actionInfo = _$_ChatStoreBaseActionController.startAction();
    try {
      return super.removeAttendedChatId(value);
    } finally {
      _$_ChatStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic openChatToAttendedChatId(String value) {
    final _$actionInfo = _$_ChatStoreBaseActionController.startAction();
    try {
      return super.openChatToAttendedChatId(value);
    } finally {
      _$_ChatStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'openChats: ${openChats.toString()},chatsOpen: ${chatsOpen.toString()},chatsAttended: ${chatsAttended.toString()}';
    return '{$string}';
  }
}
