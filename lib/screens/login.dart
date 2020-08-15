import 'package:flutter/material.dart';
import 'package:sasanya/shared/decorations.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sasanya",style: TextStyle(fontWeight:FontWeight.bold),),
        actions: [FlatButton.icon(onPressed: null, icon: Icon(Icons.person), label: Text("Register",style: TextStyle(fontWeight:FontWeight.bold,color:Colors.white),))],
      ),
      body: Stack(
              fit: StackFit.expand,
              children: [Image.asset("assets/images/nakasero-market.jpg",fit: BoxFit.cover,color: Colors.black.withOpacity(0.7),colorBlendMode:BlendMode.darken,),Center(

          child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Card(
                child:Column(
                  children: [
                    SizedBox(height:10.0),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: textInputDecoration.copyWith(hintText:"Enter email address")
                    ),
                    SizedBox(height:50.0),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: textInputDecoration.copyWith(hintText:"Enter password"),
                    ),
                    SizedBox(height:50.0),
                    RaisedButton(
                      onPressed: (){},
                      child:Text("Sign In",style: TextStyle(fontWeight:FontWeight.bold ),),
                      color: Colors.blue,
                      textColor: Colors.white,
                      
                      ),
                      SizedBox(height:10.0)
                    
                  ],
                  )
              ),
            ),
          ),
        ),
      ),
              ],
      ),
    );
  }
}