import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:service_motor_mobile/domain/chat/i_chat_facade.dart';
import 'package:service_motor_mobile/domain/chat/chat_message_failure.dart';
import 'package:service_motor_mobile/domain/chat/chat_message.dart';
import 'package:service_motor_mobile/infrastructure/core/firestore_helper.dart';

@LazySingleton(as: IChatFacade)
class ChatRepository implements IChatFacade {
  final FirebaseFirestore _firestore;

  ChatRepository(this._firestore);

  @override
  Future<Either<ChatMessageFailure, Unit>> sendChatMessage(
    String transactionId,
    String messageText,
  ) async {
    try {
      final userDoc = await _firestore.userDocument();
      await userDoc.transactionsCollection
          .doc(transactionId)
          .chatCollection
          .doc()
          .set(
            ChatMessage(
              messageText: messageText,
              sentAt: FieldValue.serverTimestamp(),
              sentBy: userDoc.id,
            ).toJson(),
          );
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const ChatMessageFailure.inSufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const ChatMessageFailure.unableToUpdate());
      } else {
        return left(const ChatMessageFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<ChatMessageFailure, List<ChatMessage>>> watchAll(
      String transactionId) async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.transactionsCollection
        .doc(transactionId)
        .chatCollection
        .orderBy('sentAt', descending: false)
        .snapshots()
        .map(
          (snapshot) => right<ChatMessageFailure, List<ChatMessage>>(
            snapshot.docs.map(
              (doc) {
                final message = ChatMessage.fromFirebase(
                  doc as DocumentSnapshot<Map<String, dynamic>>,
                ).toDomain();
                return message.copyWith(isMe: message.sentBy == userDoc.id);
              },
            ).toList(),
          ),
        )
        .onErrorReturnWith((e, _) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const ChatMessageFailure.inSufficientPermission());
      } else {
        return left(const ChatMessageFailure.unexpected());
      }
    });
  }
}
