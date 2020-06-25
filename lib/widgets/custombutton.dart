import 'package:flutter/material.dart';
import 'package:flutter_and_firebase/utils/responsive.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final Color txtcolor;
  final String label;
  final Function onpressed;
  const CustomButton({
    this.color,
    this.label,
    this.txtcolor,
    this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(context, 1),
      height: screenHeight(context, 0.08),
      child: RaisedButton(
        color: color,
        onPressed: onpressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        child: Text(
          label,
          style: TextStyle(color: txtcolor),
        ),
      ),
    );
  }
}
