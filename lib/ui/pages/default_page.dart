import 'package:flutter/material.dart';

class DefaultPage extends StatelessWidget {
  const DefaultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: const Text('예제 화면'),
      ),
      body: Center(
        child: Container(width: 100, height: 100, color: Colors.amber),
      ),
    );
  }
}
