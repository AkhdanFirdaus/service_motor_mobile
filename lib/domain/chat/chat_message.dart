import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_message.freezed.dart';
part 'chat_message.g.dart';

@freezed
class ChatMessage with _$ChatMessage {
  const factory ChatMessage({
    @JsonKey(ignore: true) final String? id,
    required final String messageText,
    @ServerTimestampConverter() required FieldValue sentAt,
    required final String sentBy,
    @JsonKey(ignore: true) final bool? isMe,
  }) = _ChatMessage;

  ChatMessage toDomain() {
    return ChatMessage(
      messageText: messageText,
      sentAt: FieldValue.serverTimestamp(),
      sentBy: sentBy,
    );
  }

  factory ChatMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageFromJson(json);

  factory ChatMessage.fromFirebase(DocumentSnapshot doc) {
    return ChatMessage.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }

  const ChatMessage._();
}

class ServerTimestampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimestampConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue object) {
    return object;
  }
}
