import 'package:flutter/material.dart';
import 'package:sasanya/shared/decorations.dart';

class Register extends StatefulWidget {
  final Function toggleView;
  Register({this.toggleView});
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey=GlobalKey<FormState>();
  String email='';
  String password='';
  String error='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign up to Sasanya"),
        actions: [FlatButton.icon(
          onPressed: ()
          {
            widget.toggleView();
          }, 
          icon: Icon(Icons.person), 
          label: Text("Sign In",style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold),))],
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
                      onPressed: (){
                        if (_formKey.currentState.validate())
                        {
                        print(email);
                        print(password);
                        }
                      },
                      child:Text("Register",style: TextStyle(fontWeight:FontWeight.bold ),),
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