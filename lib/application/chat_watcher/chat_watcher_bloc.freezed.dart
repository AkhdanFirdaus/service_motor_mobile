// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String transactionId) watchAllStarted,
    required TResult Function(
            Either<ChatMessageFailure, List<ChatMessage>> failureOrChatMessage)
        chatMessageReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String transactionId)? watchAllStarted,
    TResult Function(
            Either<ChatMessageFailure, List<ChatMessage>> failureOrChatMessage)?
        chatMessageReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String transactionId)? watchAllStarted,
    TResult Function(
            Either<ChatMessageFailure, List<ChatMessage>> failureOrChatMessage)?
        chatMessageReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_ChatMessageReceived value) chatMessageReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_ChatMessageReceived value)? chatMessageReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_ChatMessageReceived value)? chatMessageReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatWatcherEventCopyWith<$Res> {
  factory $ChatWatcherEventCopyWith(
          ChatWatcherEvent value, $Res Function(ChatWatcherEvent) then) =
      _$ChatWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatWatcherEventCopyWithImpl<$Res>
    implements $ChatWatcherEventCopyWith<$Res> {
  _$ChatWatcherEventCopyWithImpl(this._value, this._then);

  final ChatWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(ChatWatcherEvent) _then;
}

/// @nodoc
abstract class _$$_WatchAllStartedCopyWith<$Res> {
  factory _$$_WatchAllStartedCopyWith(
          _$_WatchAllStarted value, $Res Function(_$_WatchAllStarted) then) =
      __$$_WatchAllStartedCopyWithImpl<$Res>;
  $Res call({String transactionId});
}

/// @nodoc
class __$$_WatchAllStartedCopyWithImpl<$Res>
    extends _$ChatWatcherEventCopyWithImpl<$Res>
    implements _$$_WatchAllStartedCopyWith<$Res> {
  __$$_WatchAllStartedCopyWithImpl(
      _$_WatchAllStarted _value, $Res Function(_$_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _$_WatchAllStarted));

  @override
  _$_WatchAllStarted get _value => super._value as _$_WatchAllStarted;

  @override
  $Res call({
    Object? transactionId = freezed,
  }) {
    return _then(_$_WatchAllStarted(
      transactionId == freezed
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted(this.transactionId);

  @override
  final String transactionId;

  @override
  String toString() {
    return 'ChatWatcherEvent.watchAllStarted(transactionId: $transactionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WatchAllStarted &&
            const DeepCollectionEquality()
                .equals(other.transactionId, transactionId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(transactionId));

  @JsonKey(ignore: true)
  @override
  _$$_WatchAllStartedCopyWith<_$_WatchAllStarted> get copyWith =>
      __$$_WatchAllStartedCopyWithImpl<_$_WatchAllStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String transactionId) watchAllStarted,
    required TResult Function(
            Either<ChatMessageFailure, List<ChatMessage>> failureOrChatMessage)
        chatMessageReceived,
  }) {
    return watchAllStarted(transactionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String transactionId)? watchAllStarted,
    TResult Function(
            Either<ChatMessageFailure, List<ChatMessage>> failureOrChatMessage)?
        chatMessageReceived,
  }) {
    return watchAllStarted?.call(transactionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String transactionId)? watchAllStarted,
    TResult Function(
            Either<ChatMessageFailure, List<ChatMessage>> failureOrChatMessage)?
        chatMessageReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(transactionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_ChatMessageReceived value) chatMessageReceived,
  }) {
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_ChatMessageReceived value)? chatMessageReceived,
  }) {
    return watchAllStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_ChatMessageReceived value)? chatMessageReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements ChatWatcherEvent {
  const factory _WatchAllStarted(final String transactionId) =
      _$_WatchAllStarted;

  String get transactionId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_WatchAllStartedCopyWith<_$_WatchAllStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChatMessageReceivedCopyWith<$Res> {
  factory _$$_ChatMessageReceivedCopyWith(_$_ChatMessageReceived value,
          $Res Function(_$_ChatMessageReceived) then) =
      __$$_ChatMessageReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<ChatMessageFailure, List<ChatMessage>> failureOrChatMessage});
}

/// @nodoc
class __$$_ChatMessageReceivedCopyWithImpl<$Res>
    extends _$ChatWatcherEventCopyWithImpl<$Res>
    implements _$$_ChatMessageReceivedCopyWith<$Res> {
  __$$_ChatMessageReceivedCopyWithImpl(_$_ChatMessageReceived _value,
      $Res Function(_$_ChatMessageReceived) _then)
      : super(_value, (v) => _then(v as _$_ChatMessageReceived));

  @override
  _$_ChatMessageReceived get _value => super._value as _$_ChatMessageReceived;

  @override
  $Res call({
    Object? failureOrChatMessage = freezed,
  }) {
    return _then(_$_ChatMessageReceived(
      failureOrChatMessage == freezed
          ? _value.failureOrChatMessage
          : failureOrChatMessage // ignore: cast_nullable_to_non_nullable
              as Either<ChatMessageFailure, List<ChatMessage>>,
    ));
  }
}

/// @nodoc

class _$_ChatMessageReceived implements _ChatMessageReceived {
  const _$_ChatMessageReceived(this.failureOrChatMessage);

  @override
  final Either<ChatMessageFailure, List<ChatMessage>> failureOrChatMessage;

  @override
  String toString() {
    return 'ChatWatcherEvent.chatMessageReceived(failureOrChatMessage: $failureOrChatMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatMessageReceived &&
            const DeepCollectionEquality()
                .equals(other.failureOrChatMessage, failureOrChatMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failureOrChatMessage));

  @JsonKey(ignore: true)
  @override
  _$$_ChatMessageReceivedCopyWith<_$_ChatMessageReceived> get copyWith =>
      __$$_ChatMessageReceivedCopyWithImpl<_$_ChatMessageReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String transactionId) watchAllStarted,
    required TResult Function(
            Either<ChatMessageFailure, List<ChatMessage>> failureOrChatMessage)
        chatMessageReceived,
  }) {
    return chatMessageReceived(failureOrChatMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String transactionId)? watchAllStarted,
    TResult Function(
            Either<ChatMessageFailure, List<ChatMessage>> failureOrChatMessage)?
        chatMessageReceived,
  }) {
    return chatMessageReceived?.call(failureOrChatMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String transactionId)? watchAllStarted,
    TResult Function(
            Either<ChatMessageFailure, List<ChatMessage>> failureOrChatMessage)?
        chatMessageReceived,
    required TResult orElse(),
  }) {
    if (chatMessageReceived != null) {
      return chatMessageReceived(failureOrChatMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_ChatMessageReceived value) chatMessageReceived,
  }) {
    return chatMessageReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_ChatMessageReceived value)? chatMessageReceived,
  }) {
    return chatMessageReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_ChatMessageReceived value)? chatMessageReceived,
    required TResult orElse(),
  }) {
    if (chatMessageReceived != null) {
      return chatMessageReceived(this);
    }
    return orElse();
  }
}

abstract class _ChatMessageReceived implements ChatWatcherEvent {
  const factory _ChatMessageReceived(
      final Either<ChatMessageFailure, List<ChatMessage>>
          failureOrChatMessage) = _$_ChatMessageReceived;

  Either<ChatMessageFailure, List<ChatMessage>> get failureOrChatMessage =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ChatMessageReceivedCopyWith<_$_ChatMessageReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<ChatMessage> chatMessages) loadSuccess,
    required TResult Function(ChatMessageFailure chatMessageFailure)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ChatMessage> chatMessages)? loadSuccess,
    TResult Function(ChatMessageFailure chatMessageFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ChatMessage> chatMessages)? loadSuccess,
    TResult Function(ChatMessageFailure chatMessageFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatWatcherStateCopyWith<$Res> {
  factory $ChatWatcherStateCopyWith(
          ChatWatcherState value, $Res Function(ChatWatcherState) then) =
      _$ChatWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatWatcherStateCopyWithImpl<$Res>
    implements $ChatWatcherStateCopyWith<$Res> {
  _$ChatWatcherStateCopyWithImpl(this._value, this._then);

  final ChatWatcherState _value;
  // ignore: unused_field
  final $Res Function(ChatWatcherState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ChatWatcherStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ChatWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<ChatMessage> chatMessages) loadSuccess,
    required TResult Function(ChatMessageFailure chatMessageFailure)
        loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ChatMessage> chatMessages)? loadSuccess,
    TResult Function(ChatMessageFailure chatMessageFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ChatMessage> chatMessages)? loadSuccess,
    TResult Function(ChatMessageFailure chatMessageFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ChatWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadInProgressCopyWith<$Res> {
  factory _$$_LoadInProgressCopyWith(
          _$_LoadInProgress value, $Res Function(_$_LoadInProgress) then) =
      __$$_LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadInProgressCopyWithImpl<$Res>
    extends _$ChatWatcherStateCopyWithImpl<$Res>
    implements _$$_LoadInProgressCopyWith<$Res> {
  __$$_LoadInProgressCopyWithImpl(
      _$_LoadInProgress _value, $Res Function(_$_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _$_LoadInProgress));

  @override
  _$_LoadInProgress get _value => super._value as _$_LoadInProgress;
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'ChatWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<ChatMessage> chatMessages) loadSuccess,
    required TResult Function(ChatMessageFailure chatMessageFailure)
        loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ChatMessage> chatMessages)? loadSuccess,
    TResult Function(ChatMessageFailure chatMessageFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ChatMessage> chatMessages)? loadSuccess,
    TResult Function(ChatMessageFailure chatMessageFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements ChatWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<ChatMessage> chatMessages});
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$ChatWatcherStateCopyWithImpl<$Res>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _$_LoadSuccess));

  @override
  _$_LoadSuccess get _value => super._value as _$_LoadSuccess;

  @override
  $Res call({
    Object? chatMessages = freezed,
  }) {
    return _then(_$_LoadSuccess(
      chatMessages == freezed
          ? _value._chatMessages
          : chatMessages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(final List<ChatMessage> chatMessages)
      : _chatMessages = chatMessages;

  final List<ChatMessage> _chatMessages;
  @override
  List<ChatMessage> get chatMessages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chatMessages);
  }

  @override
  String toString() {
    return 'ChatWatcherState.loadSuccess(chatMessages: $chatMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            const DeepCollectionEquality()
                .equals(other._chatMessages, _chatMessages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_chatMessages));

  @JsonKey(ignore: true)
  @override
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<ChatMessage> chatMessages) loadSuccess,
    required TResult Function(ChatMessageFailure chatMessageFailure)
        loadFailure,
  }) {
    return loadSuccess(chatMessages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ChatMessage> chatMessages)? loadSuccess,
    TResult Function(ChatMessageFailure chatMessageFailure)? loadFailure,
  }) {
    return loadSuccess?.call(chatMessages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ChatMessage> chatMessages)? loadSuccess,
    TResult Function(ChatMessageFailure chatMessageFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(chatMessages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements ChatWatcherState {
  const factory _LoadSuccess(final List<ChatMessage> chatMessages) =
      _$_LoadSuccess;

  List<ChatMessage> get chatMessages => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadFailureCopyWith<$Res> {
  factory _$$_LoadFailureCopyWith(
          _$_LoadFailure value, $Res Function(_$_LoadFailure) then) =
      __$$_LoadFailureCopyWithImpl<$Res>;
  $Res call({ChatMessageFailure chatMessageFailure});

  $ChatMessageFailureCopyWith<$Res> get chatMessageFailure;
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$ChatWatcherStateCopyWithImpl<$Res>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, (v) => _then(v as _$_LoadFailure));

  @override
  _$_LoadFailure get _value => super._value as _$_LoadFailure;

  @override
  $Res call({
    Object? chatMessageFailure = freezed,
  }) {
    return _then(_$_LoadFailure(
      chatMessageFailure == freezed
          ? _value.chatMessageFailure
          : chatMessageFailure // ignore: cast_nullable_to_non_nullable
              as ChatMessageFailure,
    ));
  }

  @override
  $ChatMessageFailureCopyWith<$Res> get chatMessageFailure {
    return $ChatMessageFailureCopyWith<$Res>(_value.chatMessageFailure,
        (value) {
      return _then(_value.copyWith(chatMessageFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.chatMessageFailure);

  @override
  final ChatMessageFailure chatMessageFailure;

  @override
  String toString() {
    return 'ChatWatcherState.loadFailure(chatMessageFailure: $chatMessageFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            const DeepCollectionEquality()
                .equals(other.chatMessageFailure, chatMessageFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(chatMessageFailure));

  @JsonKey(ignore: true)
  @override
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      __$$_LoadFailureCopyWithImpl<_$_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<ChatMessage> chatMessages) loadSuccess,
    required TResult Function(ChatMessageFailure chatMessageFailure)
        loadFailure,
  }) {
    return loadFailure(chatMessageFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ChatMessage> chatMessages)? loadSuccess,
    TResult Function(ChatMessageFailure chatMessageFailure)? loadFailure,
  }) {
    return loadFailure?.call(chatMessageFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ChatMessage> chatMessages)? loadSuccess,
    TResult Function(ChatMessageFailure chatMessageFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(chatMessageFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements ChatWatcherState {
  const factory _LoadFailure(final ChatMessageFailure chatMessageFailure) =
      _$_LoadFailure;

  ChatMessageFailure get chatMessageFailure =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
