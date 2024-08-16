import 'package:flutter/material.dart';

showMessage(BuildContext context, String message) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: SizedBox(
        width: 200,
        child: Center(
          child: Text(message), // Use the passed message
        ),
      ),
    ),
  );
}
