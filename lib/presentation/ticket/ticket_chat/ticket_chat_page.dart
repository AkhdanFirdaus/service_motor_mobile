import 'package:chat_bubbles/bubbles/bubble_special_one.dart';
import 'package:flutter/material.dart';
import 'package:service_motor_mobile/presentation/core/app_theme.dart';
import 'package:service_motor_mobile/presentation/routes/app_router.dart';

class TicketChatPage extends StatefulWidget {
  const TicketChatPage({Key? key}) : super(key: key);

  @override
  State<TicketChatPage> createState() => _TicketChatPageState();
}

class _TicketChatPageState extends State<TicketChatPage> {
  bool isChatting = false;

  @override
  Widget build(BuildContext context) {
    AutoRouter.of(context);
    return Scaffold(
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
                      style: AppFont.headline2.copyWith(color: AppColor.white),
                    ),
                    subtitle: Text(
                      'Online',
                      style: AppFont.subhead3.copyWith(color: AppColor.white),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(12),
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return BubbleSpecialOne(
                        text: 'Hi, How are you? ',
                        isSender: index % 2 == 0,
                      );
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 30,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (isChatting) ...[
                        TextFormField(
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                          decoration: InputDecoration(
                            hintText: 'Ketik pesan disini...',
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.send),
                            ),
                          ),
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
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
