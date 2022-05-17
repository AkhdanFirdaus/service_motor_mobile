import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service_motor_mobile/application/auth/auth_bloc.dart';
import 'package:service_motor_mobile/application/auth/user_profile/user_profile_bloc.dart';
import 'package:service_motor_mobile/application/main_layout_menu/main_layout_menu_cubit.dart';
import 'package:service_motor_mobile/application/notification/notification_bloc.dart';
import 'package:service_motor_mobile/injection.dart';

import 'package:service_motor_mobile/presentation/auth/profile/profile_page.dart';
import 'package:service_motor_mobile/presentation/core/app_theme.dart';
import 'package:service_motor_mobile/presentation/history/history_page.dart';
import 'package:service_motor_mobile/presentation/home/home_page.dart';
import 'package:service_motor_mobile/presentation/routes/app_router.dart';
import 'package:service_motor_mobile/presentation/ticket/ticket_active/ticket_active_page.dart';

class AppMainLayoutPage extends StatefulWidget {
  const AppMainLayoutPage({Key? key}) : super(key: key);

  @override
  State<AppMainLayoutPage> createState() => _AppMainLayoutPageState();
}

class _AppMainLayoutPageState extends State<AppMainLayoutPage> {
  final _children = [
    MenuClass(
      label: 'Home',
      icon: Icons.home,
      page: const HomePage(),
    ),
    MenuClass(
      label: 'Tiket Aktif',
      icon: Icons.airplane_ticket,
      page: const TicketActivePage(),
    ),
    MenuClass(
      label: 'Histori',
      icon: Icons.history,
      page: const HistoryPage(),
    ),
    MenuClass(
      label: 'Profil',
      icon: Icons.account_circle,
      page: const ProfilePage(),
    ),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<UserProfileBloc>()
            ..add(const UserProfileEvent.watchProfileStarted()),
        ),
        BlocProvider(
          create: (context) => getIt<MainLayoutMenuCubit>(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<NotificationBloc, NotificationState>(
            listener: (context, state) {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text(state.notifications.last.title),
                    content: Text(state.notifications.last.body),
                    actions: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Close'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeMap(
                unauthenticated: (_) {
                  context.router.replace(const LoginRoute());
                },
                orElse: () {},
              );
            },
          ),
        ],
        child: BlocBuilder<MainLayoutMenuCubit, MainLayoutMenuState>(
          buildWhen: (p, c) => p.currentIndex != c.currentIndex,
          builder: (context, state) {
            return Scaffold(
              body: _children[state.currentIndex].page,
              bottomNavigationBar: Material(
                clipBehavior: Clip.hardEdge,
                color: AppColor.black,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    for (int i = 0; i < _children.length; i++)
                      InkWell(
                        onTap: () {
                          context.read<MainLayoutMenuCubit>().changePage(i);
                          setState(() {
                            currentIndex = i;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Icon(
                            _children[i].icon,
                            color: context
                                    .read<MainLayoutMenuCubit>()
                                    .isSelected(i)
                                ? AppColor.orange
                                : AppColor.white,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class MenuClass {
  MenuClass({
    required this.label,
    required this.icon,
    required this.page,
  });

  final String label;
  final IconData icon;
  final Widget page;
}
