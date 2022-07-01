part of 'chat_form_bloc.dart';

@freezed
class ChatFormEvent with _$ChatFormEvent {
  const factory ChatFormEvent.chatMessageChanged(String message) =
      _ChatMessageChanged;
  const factory ChatFormEvent.saved(String transactionId) = _Saved;
}
