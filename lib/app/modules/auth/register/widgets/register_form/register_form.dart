part of '../../register_page.dart';

class _RegisterForm extends StatefulWidget {
  const _RegisterForm({Key? key}) : super(key: key);

  @override
  State<_RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<_RegisterForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextFormField(label: 'Login'),
          SizedBox(height: 12.height),
          CustomTextFormField(
            label: 'Password',
            obscureText: true,
          ),
          SizedBox(height: 12.height),
          CustomTextFormField(
            label: 'Confirm Password',
            obscureText: true,
          ),
          SizedBox(height: 20.height),
          DefaultButton(
            labelText: 'Register',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
