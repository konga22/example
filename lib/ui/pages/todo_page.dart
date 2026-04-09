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
        bottom: false,
        child: SingleChildScrollView(
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
                // 하단 여백 확보 (네비게이션 바와 플로팅 버튼 고려)
                const SizedBox(height: 100),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF8B5CF6),
        shape: const CircleBorder(),
        child: const Icon(Icons.add, color: Colors.white, size: 32),
      ),
      bottomNavigationBar: const Padding(
        padding: .all(16),
        child: BottomNavigation(),
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
