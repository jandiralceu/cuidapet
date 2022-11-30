import 'package:flutter/material.dart';

import '../../../core/core.dart';

part 'widgets/login_form/login_form.dart';
part 'widgets/login_register/login_register.dart';

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
                const _LoginForm(),
                SizedBox(height: 20.height),
                const _SectionSeparator(),
                SizedBox(height: 20.height),
                const _LoginRegister(),
              ],
            )),
      ),
    );
  }
}

/// Section Separator Widget
class _SectionSeparator extends StatelessWidget {
  const _SectionSeparator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            thickness: 1,
            color: context.primaryColor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'OR',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14.fontSize,
                color: context.primaryColor),
          ),
        ),
        Expanded(
          child: Divider(
            thickness: 1,
            color: context.primaryColor,
          ),
        )
      ],
    );
  }
}
