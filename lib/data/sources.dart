import 'package:flutter/material.dart';

sealed class Sources {

  static const Offset offset = Offset(6, 6);
  static bool isPressed = false;
  static const Duration duration = Duration(milliseconds: 300);

  static final Color whiteColor = Colors.white.withOpacity(0.8);
  static final Color blackColor = Colors.black.withOpacity(0.2);
  static const Color backgroundColor = Color(0xFFDEDBDB);

  static Widget customButton({required void Function()? onPressed, ShapeBorder? shape}) {
    return MaterialButton(
      splashColor: Colors.transparent,
      shape: shape,
      onPressed: onPressed,
      child: const Text("Press"),
    );
  }
}