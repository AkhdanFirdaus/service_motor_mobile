import 'package:chat_bubbles/bubbles/bubble_special_one.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service_motor_mobile/application/chat_watcher/chat_watcher_bloc.dart';

class ChatListWidget extends StatelessWidget {
  const ChatListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatWatcherBloc, ChatWatcherState>(
      builder: (context, state) {
        return state.maybeMap(
          orElse: () {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          },
          loadSuccess: (e) {
            return ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: e.chatMessages.length,
              itemBuilder: (context, index) {
                final message = e.chatMessages[index];
                return BubbleSpecialOne(
                  text: message.messageText,
                  isSender: message.isMe!,
                  tail: true,
                  color: Colors.greenAccent.shade200,
                );
              },
            );
          },
          // loadFailure: (e) {
          //   return Container(
          //     color: Colors.red.shade400,
          //     child: Center(
          //       child: Text(
          //         e.chatMessageFailure.map(
          //           inSufficientPermission: (e) => 'In Sufficient Permission',
          //           unableToUpdate: (e) => 'Unable to Update',
          //           unexpected: (e) => 'Unexpected Error: $e',
          //         ),
          //       ),
          //     ),
          //   );
          // },
        );
      },
    );
  }
}
