import 'package:flutter/material.dart';

class Navigat extends StatelessWidget {
  const Navigat({super.key, required this.load});

  final Widget load;

  @override
  Widget build(BuildContext context) {
    // Navigate to the OTP screen once the widget is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => load),
      );
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Example'),
      ),
      body: const Center(
        child: Text('Navigating to OTP Screen...'),
      ),
    );
  }
}
