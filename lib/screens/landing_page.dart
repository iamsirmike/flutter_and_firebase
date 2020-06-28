import 'package:flutter/material.dart';
import 'package:flutter_and_firebase/screens/home.dart';
import 'package:flutter_and_firebase/screens/signin_page.dart';
import 'package:flutter_and_firebase/services/auth.dart';

class LandingPage extends StatelessWidget {
  final Auth auth = Auth();
  // const LandingPage({this.auth});

  @override
  Widget build(BuildContext context) {
    //check to see if user is logged in or not (if not redirect to signup page else home page)
    return StreamBuilder<User>(
        stream: auth.onAuthStateChanged,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            User user = snapshot.data;
            if (user == null) {
              return Signin(
                  // auth: auth,
                  );
            }
            return Home();
          } else {
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}
