import 'package:flutter/material.dart';

class RegisterUi extends StatefulWidget {
  const RegisterUi({super.key});

  @override
  State<RegisterUi> createState() => _RegisterUiState();
}

class _RegisterUiState extends State<RegisterUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Register Account User",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 5, top: 30, left: 10),
            child: Text(
              'Register Account',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 40,
            ),
            child: TextField(
              decoration: InputDecoration(
                // ignore: prefer_const_constructors
                icon: Icon(Icons.person),
                labelText: 'Name',
                hintText: 'Enter Name',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 40,
            ),
            child: TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.perm_identity),
                labelText: 'Username',
                hintText: 'Enter username',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 40,
            ),
            child: TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.key),
                labelText: 'Passwords',
                hintText: 'Enter Passwords',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 40,
            ),
            child: TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.email),
                labelText: 'E-mail',
                hintText: 'Enter E-mail',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 40,
            ),
            child: TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.phone),
                labelText: 'Number phone',
                hintText: 'Enter Number phone',
              ),
            ),
          ),
          // ElevatedButton(
          //   onPressed: () {},
          //   child: Text('Done'),
          // ),
        ],
      ),
    );
  }
}
