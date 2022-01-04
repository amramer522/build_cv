import 'package:flutter/material.dart';

void navigateTo({context, page, withHistory = true}) {
  Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => page,
      ),
      (route) => withHistory);
}
