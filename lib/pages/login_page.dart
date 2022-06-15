import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

// ignore: use_key_in_widget_constructors
class LoginPage extends StatefulWidget {
  // const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assests/images/login_image.png",
                // height: 500,
                fit: BoxFit.cover),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 20,
            ),
            // ignore: prefer_const_constructors
            Text(
              'Welcome $name',
              // ignore: prefer_const_constructors
              style: TextStyle(
                fontSize: 28,
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
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                        hintText: "Enter User Name....",
                        labelText: "User Name"),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                        hintText: "Enter Password....", labelText: "Password"),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 20,
                  ),

                  InkWell(
                    onTap: () async {
                      setState(() {
                        changebutton = true;
                      });

                      await Future.delayed(
                        // ignore: prefer_const_constructors
                        Duration(seconds: 1),
                      );
                      Navigator.pushNamed(context, MyRoutes.HomeRoute);
                    },
                    child: AnimatedContainer(
                      // ignore: prefer_const_constructors
                      duration: Duration(seconds: 1),

                      // container may animatio k liye animated container liya hy
                      // agr kisi b container ko clickable bana hy to usay inkvell ya justerdetector say wrap krayn
                      width: changebutton ? 50 : 150,
                      height: 40,

                      alignment: Alignment.center,
                      // ignore: prefer_const_constructors
                      child: changebutton
                          // ignore: prefer_const_constructors
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          // ignore: prefer_const_constructors
                          : Text(
                              "Login",
                              // ignore: prefer_const_constructors
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(changebutton ? 50 : 08),
                        // shape:
                        //     changebutton ? BoxShape.circle : BoxShape.rectangle,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),

                  // ElevatedButton(
                  //   // ignore: prefer_const_constructors
                  //   child: Text(
                  //     "Login",
                  //     // ignore: prefer_const_constructors
                  //     style: TextStyle(fontSize: 22),
                  //   ),
                  //   // ignore: prefer_const_constructors
                  //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.HomeRoute);
                  //   },
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
