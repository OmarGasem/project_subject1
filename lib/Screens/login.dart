import 'package:flutter/material.dart';
import 'package:project_subject/Component/text_field.dart';
import 'package:project_subject/Screens/register.dart';
import 'package:project_subject/constants.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 80.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 33.0, right: 33.0),
              child: CustomTextField(
                  TextInputType.emailAddress, false, "Enter Your Email :"),
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 33.0, right: 33.0),
              child: CustomTextField(
                  TextInputType.text, true, "Enter Your Password :"),
            ),
            SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(kBTNGreen),
                padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8))),
              ),
              child: Text(
                "Sign in",
                style: TextStyle(fontSize: 19, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Don not have an account? ",
                  style: TextStyle(fontSize: 20),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return Register();
                    }));
                  },
                  child: Text('Sign up',
                      style: TextStyle(color: Colors.black, fontSize: 20)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
