import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              '안녕하세요',
              style: TextStyle(color: Color(0xFF71717A)),
            ),
            Text('나의 할 일', style: TextStyle(fontWeight: .bold, fontSize: 30)),
          ],
        ),

        Container(
          padding: .all(10),
          decoration: BoxDecoration(color: Colors.grey[300], shape: .circle),
          child: const Icon(Icons.notifications_outlined, size: 36),
        ),
      ],
    );
  }
}
