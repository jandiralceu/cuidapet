part of '../../login_page.dart';

class _LoginRegister extends StatelessWidget {
  const _LoginRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      direction: Axis.horizontal,
      alignment: WrapAlignment.center,
      children: [
        RoundedButton(
          onTap: () {},
          icon: const Icon(
            CuidapetIcons.facebook,
            color: Colors.white,
          ),
          width: .42.screenWidth,
          labelText: 'Facebook',
          backgroundColor: const Color(0xFF4267B3),
          textColor: Colors.white,
        ),
        RoundedButton(
          onTap: () {},
          icon: const Icon(
            CuidapetIcons.google,
            color: Colors.white,
          ),
          width: .42.screenWidth,
          labelText: 'Facebook',
          backgroundColor: const Color(0xFFE15031),
          textColor: Colors.white,
        ),
        RoundedButton(
          onTap: () => Navigator.pushNamed(context, '/auth/register'),
          icon: const Icon(
            Icons.mail,
            color: Colors.white,
          ),
          width: .42.screenWidth,
          labelText: 'Register',
          backgroundColor: context.primaryDark,
          textColor: Colors.white,
        ),
      ],
    );
  }
}
