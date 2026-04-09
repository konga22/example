import 'package:example/ui/pages/todo/bottom_navigation/bottom_navigation.dart';
import 'package:example/ui/pages/todo/widget/filter_row.dart';
import 'package:example/ui/pages/todo/widget/progress_card.dart';
import 'package:example/ui/pages/todo/widget/todo_list.dart';
import 'package:flutter/material.dart';

import 'todo/widget/header.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const .all(24),
          child: Column(
            spacing: 24,
            crossAxisAlignment: .stretch,
            children: [
              const Header(),
              const ProgressCard(),
              const FilterRow(),
              _buildTodoTitle(),
              const TodoList(),
              const BottomNavigation(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTodoTitle() {
    return const Text(
      '오늘 할 일',
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }
}
