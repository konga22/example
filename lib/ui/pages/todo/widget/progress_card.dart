import 'package:flutter/material.dart';

class ProgressCard extends StatelessWidget {
  const ProgressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const .all(24),
      decoration: const BoxDecoration(
        color: Color(0xFF8B5CF6),
        borderRadius: .all(.circular(24)),
      ),
      child: const Column(
        crossAxisAlignment: .start,
        children:
        DefaultTextStyle(
           Row([
          children: [
            Text('오늘의 진행률'),
            Text('60%')
            )
            ],
        ), Text('A'), Text('A')],
      ),
    );
  }
}
