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

  final _$_openChatsAtom = Atom(name: '_ChatStoreBase._openChats');

  @override
  ObservableList<Chat> get _openChats {
    _$_openChatsAtom.context.enforceReadPolicy(_$_openChatsAtom);
    _$_openChatsAtom.reportObserved();
    return super._openChats;
  }

  @override
  set _openChats(ObservableList<Chat> value) {
    _$_openChatsAtom.context.conditionallyRunInAction(() {
      super._openChats = value;
      _$_openChatsAtom.reportChanged();
    }, _$_openChatsAtom, name: '${_$_openChatsAtom.name}_set');
  }

  final _$_attendedChatsAtom = Atom(name: '_ChatStoreBase._attendedChats');

  @override
  ObservableList<Chat> get _attendedChats {
    _$_attendedChatsAtom.context.enforceReadPolicy(_$_attendedChatsAtom);
    _$_attendedChatsAtom.reportObserved();
    return super._attendedChats;
  }

  @override
  set _attendedChats(ObservableList<Chat> value) {
    _$_attendedChatsAtom.context.conditionallyRunInAction(() {
      super._attendedChats = value;
      _$_attendedChatsAtom.reportChanged();
    }, _$_attendedChatsAtom, name: '${_$_attendedChatsAtom.name}_set');
  }

  final _$setOpenChatAsyncAction = AsyncAction('setOpenChat');

  @override
  Future<dynamic> setOpenChat(List<Chat> value) {
    return _$setOpenChatAsyncAction.run(() => super.setOpenChat(value));
  }

  final _$setAttendedChatAsyncAction = AsyncAction('setAttendedChat');

  @override
  Future<dynamic> setAttendedChat(List<Chat> value) {
    return _$setAttendedChatAsyncAction.run(() => super.setAttendedChat(value));
  }

  final _$_ChatStoreBaseActionController =
      ActionController(name: '_ChatStoreBase');

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
  dynamic openChatToAttendedChatById(String value) {
    final _$actionInfo = _$_ChatStoreBaseActionController.startAction();
    try {
      return super.openChatToAttendedChatById(value);
    } finally {
      _$_ChatStoreBaseActionController.endAction(_$actionInfo);
    }
  }

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
  dynamic removeOpenChat(Chat value) {
    final _$actionInfo = _$_ChatStoreBaseActionController.startAction();
    try {
      return super.removeOpenChat(value);
    } finally {
      _$_ChatStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeOpenChatById(String value) {
    final _$actionInfo = _$_ChatStoreBaseActionController.startAction();
    try {
      return super.removeOpenChatById(value);
    } finally {
      _$_ChatStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  Chat getOpenChat(Chat value) {
    final _$actionInfo = _$_ChatStoreBaseActionController.startAction();
    try {
      return super.getOpenChat(value);
    } finally {
      _$_ChatStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  Chat getChatOpenById(String value) {
    final _$actionInfo = _$_ChatStoreBaseActionController.startAction();
    try {
      return super.getChatOpenById(value);
    } finally {
      _$_ChatStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic addMessageOpen(Message message) {
    final _$actionInfo = _$_ChatStoreBaseActionController.startAction();
    try {
      return super.addMessageOpen(message);
    } finally {
      _$_ChatStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic receiveMessageOpen(List<Object> data) {
    final _$actionInfo = _$_ChatStoreBaseActionController.startAction();
    try {
      return super.receiveMessageOpen(data);
    } finally {
      _$_ChatStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic receiveNewChatOpen(List<Object> data) {
    final _$actionInfo = _$_ChatStoreBaseActionController.startAction();
    try {
      return super.receiveNewChatOpen(data);
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
  dynamic removeAttendedChat(Chat value) {
    final _$actionInfo = _$_ChatStoreBaseActionController.startAction();
    try {
      return super.removeAttendedChat(value);
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
  Chat getChatAttended(Chat value) {
    final _$actionInfo = _$_ChatStoreBaseActionController.startAction();
    try {
      return super.getChatAttended(value);
    } finally {
      _$_ChatStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  Chat getChatAttendedById(String value) {
    final _$actionInfo = _$_ChatStoreBaseActionController.startAction();
    try {
      return super.getChatAttendedById(value);
    } finally {
      _$_ChatStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic addMessageAttended(Message message) {
    final _$actionInfo = _$_ChatStoreBaseActionController.startAction();
    try {
      return super.addMessageAttended(message);
    } finally {
      _$_ChatStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic receiveMessageAttendance(List<Object> data) {
    final _$actionInfo = _$_ChatStoreBaseActionController.startAction();
    try {
      return super.receiveMessageAttendance(data);
    } finally {
      _$_ChatStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'chatsOpen: ${chatsOpen.toString()},chatsAttended: ${chatsAttended.toString()}';
    return '{$string}';
  }
}
