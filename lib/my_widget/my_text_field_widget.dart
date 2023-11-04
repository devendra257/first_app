import 'package:flutter/material.dart';

class UIbase {
  static getCustomWiget({
    double bRadius = 21.0,
    Color bColor = Colors.blue,
    required String hint,
    required String labelText,
    Color? mFillColor,
    bool isFilled = false,
    IconData? mPrefixIcon,
    IconData? mSuffixIcon,
    Color? iconColor,
    VoidCallback? onSuffixIconTap,
  }) {
    return InputDecoration(
      hintText: hint,
      label: Text(labelText),
      fillColor: mFillColor,
      filled: isFilled,
      iconColor: iconColor,
      prefix: mPrefixIcon != null ? Icon(mPrefixIcon) : null,
      suffix: mSuffixIcon != null
          ? InkWell(onTap: onSuffixIconTap, child: Icon(mSuffixIcon))
          : null,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(bRadius),
        borderSide: BorderSide(
          color: bColor,
        ),
      ),
    );
  }
}
