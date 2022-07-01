import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service_motor_mobile/application/chat_form/chat_form_bloc.dart';
import 'package:service_motor_mobile/application/chat_watcher/chat_watcher_bloc.dart';
import 'package:service_motor_mobile/injection.dart';
import 'package:service_motor_mobile/presentation/core/app_theme.dart';
import 'package:service_motor_mobile/presentation/ticket/ticket_chat/widgets/chat_form_widget.dart';
import 'package:service_motor_mobile/presentation/ticket/ticket_chat/widgets/chat_list_widget.dart';

class TicketChatPage extends StatelessWidget {
  const TicketChatPage({
    Key? key,
    required this.transactionId,
  }) : super(key: key);

  final String transactionId;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ChatWatcherBloc>()
            ..add(ChatWatcherEvent.watchAllStarted(transactionId)),
        ),
        BlocProvider(
          create: (context) => getIt<ChatFormBloc>(),
        ),
      ],
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(0),
          child: Container(color: AppColor.black),
        ),
        body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                bottom: -100,
                right: -60,
                child: Image.asset('assets/other/gear.png'),
              ),
              Column(
                children: [
                  Material(
                    clipBehavior: Clip.hardEdge,
                    color: AppColor.black,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 16,
                      ),
                      leading: const Card(
                        color: AppColor.white,
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Icon(
                            Icons.account_box_outlined,
                            size: 26,
                          ),
                        ),
                      ),
                      title: Text(
                        'Admin',
                        style:
                            AppFont.headline2.copyWith(color: AppColor.white),
                      ),
                      subtitle: Text(
                        'Online',
                        style: AppFont.subhead3.copyWith(color: AppColor.white),
                      ),
                    ),
                  ),
                  const Expanded(
                    child: ChatListWidget(),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 30,
                    ),
                    child: ChatFormWidget(transactionId: transactionId),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
