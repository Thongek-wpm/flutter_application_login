// ignore_for_file: avoid_unnecessary_containers

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
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text(
          'Register',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 5, left: 15, right: 15),
                child: Text(
                  'Username',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0.1, left: 15, right: 15),
                child: TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    labelText: 'Username',
                    hintText: 'Enter Username',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5, left: 15, right: 15),
                child: Text(
                  'E-mail',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0.1, left: 15, right: 15),
                child: TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.email),
                    labelText: 'Number email',
                    hintText: 'Enter Number email',
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5, left: 15, right: 15),
                child: Text(
                  'Password',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0.1, left: 15, right: 15),
                child: TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.key),
                    labelText: 'Passwords',
                    hintText: 'Enter Passwords',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5, left: 15, right: 15),
                child: Text(
                  'Number phone',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0.1, left: 15, right: 15),
                child: TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.phone),
                    labelText: 'Number Phone',
                    hintText: 'Enter Number Phone',
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Done'),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
