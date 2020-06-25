import 'package:flutter/material.dart';

//screen height
double screenHeight(BuildContext context, double percent) =>
    MediaQuery.of(context).size.height * percent;

//screen width
double screenWidth(BuildContext context, double percent) =>
    MediaQuery.of(context).size.width * percent;
