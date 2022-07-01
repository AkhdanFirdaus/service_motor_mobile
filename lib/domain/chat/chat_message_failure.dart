import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_message_failure.freezed.dart';

@freezed
class ChatMessageFailure with _$ChatMessageFailure {
  const factory ChatMessageFailure.inSufficientPermission() =
      _InSufficientPermission;
  const factory ChatMessageFailure.unableToUpdate() = _UnableToUpdate;
  const factory ChatMessageFailure.unexpected() = _Unexpected;
}
