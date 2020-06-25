import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: RaisedButton(
            color:Colors.red,
            child: Text('Log out'),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
