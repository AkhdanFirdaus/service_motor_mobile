// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatMessage _$ChatMessageFromJson(Map<String, dynamic> json) {
  return _ChatMessage.fromJson(json);
}

/// @nodoc
mixin _$ChatMessage {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String get messageText => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  FieldValue get sentAt => throw _privateConstructorUsedError;
  String get sentBy => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  bool? get isMe => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatMessageCopyWith<ChatMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageCopyWith<$Res> {
  factory $ChatMessageCopyWith(
          ChatMessage value, $Res Function(ChatMessage) then) =
      _$ChatMessageCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String messageText,
      @ServerTimestampConverter() FieldValue sentAt,
      String sentBy,
      @JsonKey(ignore: true) bool? isMe});
}

/// @nodoc
class _$ChatMessageCopyWithImpl<$Res> implements $ChatMessageCopyWith<$Res> {
  _$ChatMessageCopyWithImpl(this._value, this._then);

  final ChatMessage _value;
  // ignore: unused_field
  final $Res Function(ChatMessage) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? messageText = freezed,
    Object? sentAt = freezed,
    Object? sentBy = freezed,
    Object? isMe = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      messageText: messageText == freezed
          ? _value.messageText
          : messageText // ignore: cast_nullable_to_non_nullable
              as String,
      sentAt: sentAt == freezed
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as FieldValue,
      sentBy: sentBy == freezed
          ? _value.sentBy
          : sentBy // ignore: cast_nullable_to_non_nullable
              as String,
      isMe: isMe == freezed
          ? _value.isMe
          : isMe // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_ChatMessageCopyWith<$Res>
    implements $ChatMessageCopyWith<$Res> {
  factory _$$_ChatMessageCopyWith(
          _$_ChatMessage value, $Res Function(_$_ChatMessage) then) =
      __$$_ChatMessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String messageText,
      @ServerTimestampConverter() FieldValue sentAt,
      String sentBy,
      @JsonKey(ignore: true) bool? isMe});
}

/// @nodoc
class __$$_ChatMessageCopyWithImpl<$Res> extends _$ChatMessageCopyWithImpl<$Res>
    implements _$$_ChatMessageCopyWith<$Res> {
  __$$_ChatMessageCopyWithImpl(
      _$_ChatMessage _value, $Res Function(_$_ChatMessage) _then)
      : super(_value, (v) => _then(v as _$_ChatMessage));

  @override
  _$_ChatMessage get _value => super._value as _$_ChatMessage;

  @override
  $Res call({
    Object? id = freezed,
    Object? messageText = freezed,
    Object? sentAt = freezed,
    Object? sentBy = freezed,
    Object? isMe = freezed,
  }) {
    return _then(_$_ChatMessage(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      messageText: messageText == freezed
          ? _value.messageText
          : messageText // ignore: cast_nullable_to_non_nullable
              as String,
      sentAt: sentAt == freezed
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as FieldValue,
      sentBy: sentBy == freezed
          ? _value.sentBy
          : sentBy // ignore: cast_nullable_to_non_nullable
              as String,
      isMe: isMe == freezed
          ? _value.isMe
          : isMe // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatMessage extends _ChatMessage {
  const _$_ChatMessage(
      {@JsonKey(ignore: true) this.id,
      required this.messageText,
      @ServerTimestampConverter() required this.sentAt,
      required this.sentBy,
      @JsonKey(ignore: true) this.isMe})
      : super._();

  factory _$_ChatMessage.fromJson(Map<String, dynamic> json) =>
      _$$_ChatMessageFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String messageText;
  @override
  @ServerTimestampConverter()
  final FieldValue sentAt;
  @override
  final String sentBy;
  @override
  @JsonKey(ignore: true)
  final bool? isMe;

  @override
  String toString() {
    return 'ChatMessage(id: $id, messageText: $messageText, sentAt: $sentAt, sentBy: $sentBy, isMe: $isMe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatMessage &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.messageText, messageText) &&
            const DeepCollectionEquality().equals(other.sentAt, sentAt) &&
            const DeepCollectionEquality().equals(other.sentBy, sentBy) &&
            const DeepCollectionEquality().equals(other.isMe, isMe));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(messageText),
      const DeepCollectionEquality().hash(sentAt),
      const DeepCollectionEquality().hash(sentBy),
      const DeepCollectionEquality().hash(isMe));

  @JsonKey(ignore: true)
  @override
  _$$_ChatMessageCopyWith<_$_ChatMessage> get copyWith =>
      __$$_ChatMessageCopyWithImpl<_$_ChatMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatMessageToJson(this);
  }
}

abstract class _ChatMessage extends ChatMessage {
  const factory _ChatMessage(
      {@JsonKey(ignore: true) final String? id,
      required final String messageText,
      @ServerTimestampConverter() required final FieldValue sentAt,
      required final String sentBy,
      @JsonKey(ignore: true) final bool? isMe}) = _$_ChatMessage;
  const _ChatMessage._() : super._();

  factory _ChatMessage.fromJson(Map<String, dynamic> json) =
      _$_ChatMessage.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @override
  String get messageText => throw _privateConstructorUsedError;
  @override
  @ServerTimestampConverter()
  FieldValue get sentAt => throw _privateConstructorUsedError;
  @override
  String get sentBy => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  bool? get isMe => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ChatMessageCopyWith<_$_ChatMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
