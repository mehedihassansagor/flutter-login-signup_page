// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_app/register.dart';

import 'login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "login",
    routes: {
      "login": (context) => MyLogin(),
      "register": (context) => MyRegister(),
    },
  ));
}
