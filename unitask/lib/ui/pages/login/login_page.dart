import 'package:flutter/material.dart';
import 'package:unitask/ui/common/label_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: .all(20),
        child: Center(
          child: Column(
            children: [
              Icon(LucideIcons.graduationCap, size: 50),
              Text(
                'UniTask',
                style: TextStyle(fontSize: 28, fontWeight: .bold),
              ),
              Text('과제 관리를 스마트하게'),
              LabelTextField(
                label: '이메일',
                hintText: 'exexexex@gmail.com',
                icon: LucideIcons.mail,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
