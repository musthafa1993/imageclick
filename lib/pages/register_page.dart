import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Register Page'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
    );
  }
}