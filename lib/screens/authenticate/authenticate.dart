
import 'package:flutter/material.dart';
import 'package:sasanya/screens/authenticate/login.dart';
import 'package:sasanya/screens/authenticate/register.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignIn =true; //primary function is to toggle between register and sign in

  void toggleView() //method to toggle between register and sign in 
  {
    setState(() => showSignIn = !showSignIn );
  }
  @override
  Widget build(BuildContext context) {
    if(showSignIn)
    {
      return LoginPage(toggleView:toggleView);
    }
    else
    {
      return Register(toggleView:toggleView);
    }
  }
}