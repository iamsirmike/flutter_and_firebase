import 'package:flutter/material.dart';
import 'package:flutter_and_firebase/widgets/custombutton.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Signin extends StatelessWidget {
  Signin({this.onSignIn});
  final Function(FirebaseUser) onSignIn;
  final auth = FirebaseAuth.instance;

  Future<void> _loginanymo() async {
    try {
      final authResult = await auth.signInAnonymously();
      onSignIn(authResult.user);
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Tracker'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Spacer(),
              Text(
                'Sign in',
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0),
              CustomButton(
                label: 'Sign in with google',
                color: Colors.white,
                onpressed: () {},
              ),
              SizedBox(height: 10.0),
              CustomButton(
                label: 'Sign in with facebook',
                color: Colors.blueAccent,
                txtcolor: Colors.white,
                onpressed: () {},
              ),
              SizedBox(height: 10.0),
              CustomButton(
                label: 'Sign in with email',
                color: Colors.green,
                txtcolor: Colors.white,
                onpressed: () {},
              ),
              SizedBox(height: 10.0),
              Text('or'),
              SizedBox(height: 10.0),
              CustomButton(
                label: 'Go anonymous',
                color: Colors.yellow,
                onpressed: _loginanymo,
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
