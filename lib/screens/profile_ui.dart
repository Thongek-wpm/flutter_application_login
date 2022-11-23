// ignore_for_file: unnecessary_const

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:flutter_application_foods/screens/login_ui.dart';

class ProFileUi extends StatefulWidget {
  const ProFileUi({super.key});

  @override
  State<ProFileUi> createState() => _ProFileUiState();
}

class _ProFileUiState extends State<ProFileUi> {
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Padding(
            padding: const EdgeInsets.only(
              bottom: 5,
              top: 40,
            ),
            child: const Text(
              'You Profile',
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 5,
            ),
            child: Card(
              child: Row(
                children: [
                  const Text(
                    'Your uid : ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    auth.currentUser!.uid,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 5,
            ),
            child: Card(
              child: Row(
                children: [
                  const Text(
                    'Your E-mail : ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    auth.currentUser!.email!,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                auth.signOut().then((value) => {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return const LoginUi();
                      }))
                    });
              },
              child: const Text('LOGOUT'),
            ),
          ),
        ],
      ),
    );
  }
}
