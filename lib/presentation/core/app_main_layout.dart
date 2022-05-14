import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service_motor_mobile/application/auth/auth_bloc.dart';
import 'package:service_motor_mobile/application/auth/user_profile/user_profile_bloc.dart';
import 'package:service_motor_mobile/injection.dart';

import 'package:service_motor_mobile/presentation/auth/profile/profile_page.dart';
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
      ],
      child: MultiBlocListener(
        listeners: [
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
        child: Scaffold(
          body: _children[currentIndex].page,
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            items: _children.map((e) {
              // final isSelected = _children.indexOf(e) == currentIndex;
              return BottomNavigationBarItem(
                icon: Icon(e.icon),
                label: e.label,
              );
            }).toList(),
          ),
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
