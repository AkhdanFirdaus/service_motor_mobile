import 'package:dartz/dartz.dart';
import 'package:service_motor_mobile/domain/chat/chat_message.dart';
import 'package:service_motor_mobile/domain/chat/chat_message_failure.dart';

abstract class IChatFacade {
  Future<Either<ChatMessageFailure, Unit>> sendChatMessage(
    String transactionId,
    String messageText,
  );
  Stream<Either<ChatMessageFailure, List<ChatMessage>>> watchAll(
    String transactionId,
  );
}
