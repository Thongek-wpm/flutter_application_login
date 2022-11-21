import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ForgotUi extends StatefulWidget {
  const ForgotUi({super.key});

  @override
  State<ForgotUi> createState() => _ForgotUiState();
}

class _ForgotUiState extends State<ForgotUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text("Forget Passwords"),
        centerTitle: true,
      ),
    );
  }
}
