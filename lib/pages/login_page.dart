import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assests/images/login_image.png", fit: BoxFit.cover),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 20,
          ),
          // ignore: prefer_const_constructors
          Text(
            'Welcome',
            // ignore: prefer_const_constructors
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter User Name....", labelText: "User Name"),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter Password....", labelText: "Password"),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: Text("Login"),
                  onPressed: () {
                    print("hi junaid");
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
