part of 'chat_form_bloc.dart';

@freezed
class ChatFormState with _$ChatFormState {
  const factory ChatFormState({
    required MessageText messageText,
    required bool showErrorMessages,
    required bool isEditing,
    required bool isSaving,
    required Option<Either<ChatMessageFailure, Unit>>
        saveFailureOrSuccessOption,
  }) = _ChatFormState;

  factory ChatFormState.initial() => ChatFormState(
        messageText: MessageText(''),
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
