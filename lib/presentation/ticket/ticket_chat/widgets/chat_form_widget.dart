import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service_motor_mobile/application/chat_form/chat_form_bloc.dart';
import 'package:service_motor_mobile/presentation/routes/app_router.dart';

class ChatFormWidget extends StatefulWidget {
  const ChatFormWidget({Key? key, required this.transactionId})
      : super(key: key);

  final String transactionId;

  @override
  State<ChatFormWidget> createState() => _ChatFormWidgetState();
}

class _ChatFormWidgetState extends State<ChatFormWidget> {
  bool isChatting = false;

  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AutoRouter.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (isChatting) ...[
          BlocConsumer<ChatFormBloc, ChatFormState>(
            listenWhen: (p, c) =>
                p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
            listener: (context, state) {
              state.saveFailureOrSuccessOption.fold(
                () {},
                (either) => either.fold(
                  (l) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: Colors.redAccent,
                        margin: EdgeInsets.only(
                          bottom: MediaQuery.of(context).size.height - 100,
                          right: 20,
                          left: 20,
                        ),
                        content: const Text(
                          "Faileed Send Message",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    );
                  },
                  (r) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: Colors.teal,
                        margin: EdgeInsets.only(
                          bottom: MediaQuery.of(context).size.height - 100,
                          right: 20,
                          left: 20,
                        ),
                        content: const Text(
                          "Success Send Message",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    );
                    controller.clear();
                  },
                ),
              );
            },
            builder: (context, state) {
              return TextFormField(
                controller: controller,
                keyboardType: TextInputType.multiline,
                maxLines: null,
                onChanged: (value) {
                  context
                      .read<ChatFormBloc>()
                      .add(ChatFormEvent.chatMessageChanged(value));
                },
                validator: (_) =>
                    context.read<ChatFormBloc>().state.messageText.value.fold(
                          (f) => f.maybeMap(
                            empty: (f) => 'Cannot be empty',
                            orElse: () => null,
                          ),
                          (r) => null,
                        ),
                decoration: InputDecoration(
                  hintText: 'Ketik pesan disini...',
                  suffixIcon: IconButton(
                    onPressed: () {
                      context
                          .read<ChatFormBloc>()
                          .add(ChatFormEvent.saved(widget.transactionId));
                    },
                    icon: const Icon(Icons.send),
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 16),
          FractionallySizedBox(
            widthFactor: 1,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  isChatting = false;
                });
              },
              child: const Text('Selesai'),
            ),
          ),
        ] else ...[
          FractionallySizedBox(
            widthFactor: 1,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  isChatting = true;
                });
              },
              child: const Text('Chat Lagi'),
            ),
          ),
          const SizedBox(height: 16),
          FractionallySizedBox(
            widthFactor: 1,
            child: OutlinedButton(
              onPressed: () {
                context.router.pop();
              },
              child: const Text('Kembali ke Menu Utama'),
            ),
          ),
        ]
      ],
    );
    //   },
    // );
  }
}
