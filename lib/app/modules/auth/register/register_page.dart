import 'package:flutter/material.dart';

import '../../../core/core.dart';

part 'widgets/register_form/register_form.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(height: 50.height),
              Center(
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 162.width,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: 20.height),
              const _RegisterForm(),
            ],
          ),
        ),
      ),
    );
  }
}
