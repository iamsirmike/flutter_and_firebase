import 'package:flutter/material.dart';
import 'package:flutter_and_firebase/services/auth.dart';
import 'package:flutter_and_firebase/widgets/custombutton.dart';

class Signin extends StatelessWidget {
  // Signin({this.auth}); //constructor for the function

  final Auth auth = Auth(); //create a firebaseAuth instance

  // final String email = "asamoahmichael77@gmail.com";
  // final String pass = 'okokokokokoko';
//SIGNIN ANONYMOUSLY
  Future<void> _loginanymo() async {
    try {
      await auth.signinAnonym();
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> _signinwithgoogle() async {
    try {
      await auth.signInWithGoogle();
    } catch (e) {
      print(e.toString());
    }
  }

  // Future<void> _reg() async {
  //   try {
  //     await auth.signupwithemail(email, pass);
  //   } catch (e) {
  //     print(e.toString());
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firebase Auth'),
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
                onpressed: _signinwithgoogle,
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
