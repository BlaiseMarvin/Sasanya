import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sasanya/models/user.dart';
import 'package:sasanya/screens/authenticate/authenticate.dart';
import 'package:sasanya/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    //some logic expected here, that is used to decide which page is to be picked, authenticate or the home page.
    
    if (user==null) {
      return Authenticate();
    } else{
      return Home();
    }
  }
}