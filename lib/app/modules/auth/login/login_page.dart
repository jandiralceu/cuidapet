import 'package:flutter/material.dart';

import '../../../core/core.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final loginController = TextEditingController();

  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomTextFormField(
              label: 'Login',
              controller: loginController,
            ),
            CustomTextFormField(
              label: 'Password',
              obscureText: true,
              controller: passwordController,
            ),
            RoundedButton(
              onTap: () {},
              width: 200,
              backgroundColor: Colors.blue,
              icon: Icon(
                CuidapetIcons.facebook,
                color: Colors.white,
                size: 20.width,
              ),
              labelText: 'Facebook',
            ),
            RoundedButton(
              onTap: () {},
              width: 200,
              backgroundColor: Colors.orange,
              icon: Icon(
                CuidapetIcons.google,
                color: Colors.white,
                size: 20.width,
              ),
              labelText: 'Facebook',
            ),
            DefaultButton(
              labelText: 'Login',
              onPressed: () {},
              padding: const EdgeInsets.all(10),
            ),
          ],
        ),
      ),
    );
  }
}
