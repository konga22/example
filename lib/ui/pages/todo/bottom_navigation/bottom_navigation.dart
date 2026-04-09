import 'package:example/ui/pages/todo/bottom_navigation/widget/nav_button.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  final List<({String text, IconData icon})> _navItems = [
    (text: '홈', icon: Icons.home_outlined),
    (text: '캘린더', icon: Icons.calendar_today_outlined),
    (text: '통계', icon: Icons.bar_chart_outlined),
    (text: '프로필', icon: Icons.person_outline),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: .circular(100),
        border: .all(color: Colors.grey[200]!, width: 1.5),
      ),
      child: Padding(
        padding: const .symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: .spaceAround,
          children: _navItems.asMap().entries.map((entry) {
            final index = entry.key;
            final item = entry.value;
            return Expanded(
              child: NavButton(
                selected: _selectedIndex == index,
                icon: item.icon,
                text: item.text,
                onTap: () => setState(() => _selectedIndex = index),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
