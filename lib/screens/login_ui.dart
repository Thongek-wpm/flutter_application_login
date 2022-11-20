import 'package:flutter/material.dart';

class LoginUi extends StatefulWidget {
  const LoginUi({super.key});

  @override
  State<LoginUi> createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
  final TextEditingController usernameCon = TextEditingController(text: '');
  final TextEditingController passwordCon = TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Text("Login"),
          // this's TextField User
          TextField(
            controller: usernameCon,
            decoration: InputDecoration(
              labelText: "User",
              hintText: "Enter User",
              icon: Icon(Icons.person),
            ),
          ),
          // TextField Password
          TextField(
            controller: passwordCon,
            decoration: InputDecoration(
              labelText: "Password",
              hintText: "Enter Password",
              icon: Icon(Icons.key),
            ),
          ),
          // this's button for Login to homeUi
          TextButton(
            onPressed: () {},
            child: Text(
              "LOGIN",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "If you forget password",
                style: TextStyle(fontSize: 16),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "HERE",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
