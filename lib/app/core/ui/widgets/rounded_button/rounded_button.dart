import 'package:flutter/material.dart';

import '../../extensions/extensions.dart';

/// Rounded Button
class RoundedButton extends StatelessWidget {
  final VoidCallback onTap;

  final double? width;

  final Color? backgroundColor;

  final Color? textColor;

  final Icon icon;

  final String labelText;

  /// Creates a [RoundedButton]
  const RoundedButton({
    Key? key,
    required this.onTap,
    this.width,
    this.backgroundColor,
    this.textColor,
    required this.icon,
    required this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const defaultTextColor = Colors.white;

    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: 45.height,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 0, right: 2),
              child: icon,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: VerticalDivider(
                thickness: 2,
                color: textColor ?? defaultTextColor,
              ),
            ),
            Padding(
              padding: EdgeInsets.zero,
              child: Text(
                labelText,
                style: TextStyle(
                  color: textColor ?? defaultTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.fontSize,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
