part of '../../login_page.dart';

class _LoginForm extends StatefulWidget {
  const _LoginForm({Key? key}) : super(key: key);

  @override
  State<_LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<_LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextFormField(label: 'Login'),
          SizedBox(height: 20.height),
          CustomTextFormField(
            label: 'Password',
            obscureText: true,
          ),
          SizedBox(height: 20.height),
          DefaultButton(
            labelText: 'Login',
            onPressed: () {},
          ),
          SizedBox(height: 20.height),
        ],
      ),
    );
  }
}
