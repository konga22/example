import 'package:example/ui/pages/todo/widget/filter_row.dart';
import 'package:example/ui/pages/todo/widget/progress_card.dart';
import 'package:flutter/material.dart';
import 'todo/widget/header.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //타이틀 상단
            Header(),
            ProgressCard(),
            FilterRow(),
          ],
        ),
      ),
    );
  }
}
