import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:service_motor_mobile/application/auth/auth_bloc.dart';
import 'package:service_motor_mobile/application/auth/user_profile/user_profile_bloc.dart';
import 'package:service_motor_mobile/application/main_layout_menu/main_layout_menu_cubit.dart';
import 'package:service_motor_mobile/application/notification/notification_bloc.dart';
import 'package:service_motor_mobile/injection.dart';

import 'package:service_motor_mobile/presentation/core/app_theme.dart';
import 'package:service_motor_mobile/presentation/history/history_page.dart';
import 'package:service_motor_mobile/presentation/home/home_page.dart';
import 'package:service_motor_mobile/presentation/reparation/reparation_page.dart';
import 'package:service_motor_mobile/presentation/routes/app_router.dart';
import 'package:service_motor_mobile/presentation/ticket/ticket_active/ticket_active_page.dart';

final _children = [
  MenuClass(
    label: 'Home',
    icon: Icons.home,
    page: const HomePage(),
  ),
  MenuClass(
    label: 'Reparasi',
    icon: Icons.auto_fix_high,
    page: const ReparationPage(),
  ),
  MenuClass(
    label: 'Tiket Aktif',
    icon: FontAwesomeIcons.ticket,
    page: const TicketActivePage(),
  ),
  MenuClass(
    label: 'Histori',
    icon: Icons.history,
    page: const HistoryPage(),
  ),
];

class AppMainLayoutPage extends StatelessWidget {
  const AppMainLayoutPage({Key? key}) : super(key: key);

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
                  context.router.replaceAll(const [LoginRoute()]);
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
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: FaIcon(
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
