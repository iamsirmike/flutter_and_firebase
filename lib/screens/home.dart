import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({this.onSignOut});
  final Function onSignOut;
  final auth = FirebaseAuth.instance;

  Future<void> signout() async {
    await auth.signOut();
    onSignOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: RaisedButton(
            color: Colors.red,
            child: Text('Log out'),
            onPressed: signout,
          ),
        ),
      ),
    );
  }
}
