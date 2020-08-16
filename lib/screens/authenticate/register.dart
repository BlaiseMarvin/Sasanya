import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sasanya/services/auth.dart';
import 'package:sasanya/shared/decorations.dart';

class Register extends StatefulWidget {
  final Function toggleView;
  Register({this.toggleView});
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();
  final _formKey=GlobalKey<FormState>();
  String email='';
  String password='';
  String error='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign up to Sasanya",style:GoogleFonts.bangers(textStyle:TextStyle(fontSize:30)) ),
        actions: [FlatButton.icon(
          onPressed: ()
          {
            widget.toggleView();
          }, 
          icon: Icon(Icons.person), 
          label: Text("Sign In",style:GoogleFonts.bangers(textStyle:TextStyle(fontSize:20,color: Colors.white)) ))],
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
                          dynamic result = await _auth.registerWithEmailAndPassword(email, password);
                          if(result==null)
                          {
                            setState(()=>error='Error signing up, make sure you have a good internet connection');
                          }
                        }
                      },
                      child:Text("Register",textAlign: TextAlign.center,style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize:20,))),
                      color: Colors.blue,
                      textColor: Colors.white,
                      
                      ),
                      SizedBox(height:10.0),
                      Text(error, style: TextStyle(color:Colors.red,fontSize:14.0),)
                    
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