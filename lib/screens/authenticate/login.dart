import 'package:flutter/material.dart';
import 'package:sasanya/services/auth.dart';
import 'package:sasanya/shared/decorations.dart';
import 'package:sasanya/shared/loading.dart';

class LoginPage extends StatefulWidget {
  final Function toggleView;
  LoginPage({this.toggleView});
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final AuthService _auth = AuthService();
  final _formKey=GlobalKey<FormState>();
  String email;
  String password='';
  String error='';
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return loading?Loading():Scaffold(
      appBar: AppBar(
        title: Text("Sign in to Sasanya",style: TextStyle(fontWeight:FontWeight.bold),),
        actions: [FlatButton.icon(
          onPressed: ()
          {
            widget.toggleView();
          }, 
          icon: Icon(Icons.person), 
          label: Text("Register",style: TextStyle(fontWeight:FontWeight.bold,color:Colors.white),))],
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
                      validator: (val)=>val.isEmpty?'Enter an email address':null,
                      onChanged: (val){setState(()=>email=val);}, 
                        
                      
                      keyboardType: TextInputType.emailAddress,
                      decoration: textInputDecoration.copyWith(hintText:"Enter email address")
                    ),
                    SizedBox(height:50.0),
                    TextFormField(
                      validator: (val)=>val.length<8?'Enter a password with 8+ characters long':null,
                      onChanged: (val){setState(()=>password=val 
                        
                      );},
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: textInputDecoration.copyWith(hintText:"Enter password"),
                    ),
                    SizedBox(height:50.0),
                    RaisedButton(
                      onPressed: () async{
                        if (_formKey.currentState.validate())
                        {
                          dynamic result = await _auth.signInAnon();
                          if(result==null)
                          {
                            print("error signing in");
                          } else{ 
                            print("signed in");
                            print(result);
                          }
                          print(email);
                          print(password);
                        }
                      },
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