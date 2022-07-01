part of 'chat_watcher_bloc.dart';

@freezed
class ChatWatcherEvent with _$ChatWatcherEvent {
  const factory ChatWatcherEvent.watchAllStarted(String transactionId) =
      _WatchAllStarted;
  const factory ChatWatcherEvent.chatMessageReceived(
          Either<ChatMessageFailure, List<ChatMessage>> failureOrChatMessage) =
      _ChatMessageReceived;
}
