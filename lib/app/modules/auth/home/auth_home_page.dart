import 'package:flutter/material.dart';

import '../../../core/core.dart';

class AuthHomePage extends StatelessWidget {
  const AuthHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/logo.png',
          width: 162.width,
          height: 130.height,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
