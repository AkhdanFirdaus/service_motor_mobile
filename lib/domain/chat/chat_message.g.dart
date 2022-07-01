// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatMessage _$$_ChatMessageFromJson(Map<String, dynamic> json) =>
    _$_ChatMessage(
      messageText: json['messageText'] as String,
      sentAt:
          const ServerTimestampConverter().fromJson(json['sentAt'] as Object),
      sentBy: json['sentBy'] as String,
    );

Map<String, dynamic> _$$_ChatMessageToJson(_$_ChatMessage instance) =>
    <String, dynamic>{
      'messageText': instance.messageText,
      'sentAt': const ServerTimestampConverter().toJson(instance.sentAt),
      'sentBy': instance.sentBy,
    };
