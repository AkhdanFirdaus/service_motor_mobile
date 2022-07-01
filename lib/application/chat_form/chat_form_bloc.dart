import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:service_motor_mobile/domain/chat/chat_message_failure.dart';
import 'package:service_motor_mobile/domain/chat/chat_value_objects.dart';
import 'package:service_motor_mobile/domain/chat/i_chat_facade.dart';

part 'chat_form_event.dart';
part 'chat_form_state.dart';
part 'chat_form_bloc.freezed.dart';

@injectable
class ChatFormBloc extends Bloc<ChatFormEvent, ChatFormState> {
  final IChatFacade _chatRepository;

  ChatFormBloc(this._chatRepository) : super(ChatFormState.initial()) {
    on<ChatFormEvent>((event, emit) async {
      await event.map(
        chatMessageChanged: (e) async {
          emit(state.copyWith(
            messageText: MessageText(e.message),
            saveFailureOrSuccessOption: none(),
          ));
        },
        saved: (e) async {
          Either<ChatMessageFailure, Unit> failureOrSuccess =
              left(const ChatMessageFailure.unexpected());

          emit(state.copyWith(
            isSaving: true,
            saveFailureOrSuccessOption: none(),
          ));

          failureOrSuccess = await _chatRepository.sendChatMessage(
            e.transactionId,
            state.messageText.getOrCrash(),
          );

          emit(state.copyWith(
            isSaving: false,
            showErrorMessages: true,
            saveFailureOrSuccessOption: optionOf(failureOrSuccess),
          ));
        },
      );
    });
  }
}
