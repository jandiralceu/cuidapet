import 'package:flutter/material.dart';

import '../../extensions/extensions.dart';

/// Default Button
class DefaultButton extends StatelessWidget {
  final VoidCallback? onPressed;

  final String labelText;

  final double? fontSize;

  final double? borderRadius;

  final Color? backgroundColor;

  final Color? textColor;

  final double? width;

  final double? height;

  final EdgeInsetsGeometry? padding;

  /// Creates a [DefaultButton]
  const DefaultButton({
    Key? key,
    this.onPressed,
    required this.labelText,
    this.fontSize = 20,
    this.borderRadius = 10,
    this.backgroundColor,
    this.textColor,
    this.width = double.infinity,
    this.height = 66,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius!),
          ),
          backgroundColor: backgroundColor ?? context.primaryColor,
        ),
        child: Text(
          labelText,
          style: TextStyle(
            fontSize: fontSize,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
