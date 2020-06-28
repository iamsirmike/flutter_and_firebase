import 'package:flutter/material.dart';
import 'package:flutter_and_firebase/services/auth.dart';

class Home extends StatelessWidget {
  final Auth auth = Auth();

  Future<void> signout() async {
    await auth.signOut();
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
