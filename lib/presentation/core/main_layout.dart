import 'package:flutter/material.dart';

import 'package:service_motor_mobile/presentation/auth/profile/profile_page.dart';
import 'package:service_motor_mobile/presentation/history/history_page.dart';
import 'package:service_motor_mobile/presentation/home/home_page.dart';
import 'package:service_motor_mobile/presentation/ticket/ticket_active/ticket_active_page.dart';

class MainLayoutPage extends StatefulWidget {
  const MainLayoutPage({Key? key}) : super(key: key);

  @override
  State<MainLayoutPage> createState() => _MainLayoutPageState();
}

class _MainLayoutPageState extends State<MainLayoutPage> {
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
    return Scaffold(
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
