import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:service_motor_mobile/domain/chat/chat_message.dart';
import 'package:service_motor_mobile/domain/chat/chat_message_failure.dart';
import 'package:service_motor_mobile/domain/chat/i_chat_facade.dart';

part 'chat_watcher_event.dart';
part 'chat_watcher_state.dart';
part 'chat_watcher_bloc.freezed.dart';

@injectable
class ChatWatcherBloc extends Bloc<ChatWatcherEvent, ChatWatcherState> {
  final IChatFacade _chatRepository;
  StreamSubscription<Either<ChatMessageFailure, List<ChatMessage>>>?
      _galleryStreamSubscription;

  ChatWatcherBloc(this._chatRepository)
      : super(const ChatWatcherState.initial()) {
    on<ChatWatcherEvent>((event, emit) async {
      await event.map(
        watchAllStarted: (e) async {
          emit(const ChatWatcherState.loadInProgress());
          await _galleryStreamSubscription?.cancel();
          _galleryStreamSubscription = _chatRepository
              .watchAll(e.transactionId)
              .listen(
                (failureOrChatMessage) => add(
                    ChatWatcherEvent.chatMessageReceived(failureOrChatMessage)),
              );
        },
        chatMessageReceived: (e) async {
          e.failureOrChatMessage.fold(
            (l) => emit(ChatWatcherState.loadFailure(l)),
            (r) => emit(ChatWatcherState.loadSuccess(r)),
          );
        },
      );
    });
  }
}
