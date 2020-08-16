import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sasanya/models/user.dart';
import 'package:sasanya/screens/authenticate/authenticate.dart';
import 'package:sasanya/screens/authenticate/login.dart';
import 'package:sasanya/screens/home/home.dart';
import 'package:sasanya/screens/home/wrapper.dart';
import 'package:sasanya/services/auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
          value: AuthService().user, //this is the stream we are accessing from the auth service class
          child: MaterialApp(
        debugShowCheckedModeBanner: false,
        
        theme: ThemeData(
          
          primarySwatch: Colors.blue,
          
          
        ),
        home: Wrapper(),
      ),
    );
  }
}

