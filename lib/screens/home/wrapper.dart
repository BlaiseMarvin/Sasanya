import 'package:flutter/material.dart';
import 'package:sasanya/screens/authenticate/authenticate.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //some logic expected here, that is used to decide which page is to be picked, authenticate or the home page.
    return Authenticate();
  }
}