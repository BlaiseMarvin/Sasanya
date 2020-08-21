import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sasanya/screens/home/home.dart';

class LoginScreen extends StatelessWidget {
  final _phoneController = TextEditingController();
  final _codeController = TextEditingController();


  Future<bool> loginUser(String phone,BuildContext context) async{
    FirebaseAuth _phoneauth = FirebaseAuth.instance;
    _phoneauth.verifyPhoneNumber(
      phoneNumber: phone,  //user phone number which you're going to verify
      timeout: Duration(seconds:60), //time when the code sent to the user will expire
      verificationCompleted: (AuthCredential credential)
      async{
        Navigator.of(context).pop();
        AuthResult result = await _phoneauth.signInWithCredential(credential);
        FirebaseUser user = result.user;

        if(user!=null)
        {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
        } else {
          print("Error");
        }
        
//this call back only gets called when verification is done automatically

      }, //called when verification is successful
      verificationFailed: (AuthException exception){
        print(exception);

      }, //called when the verification has failed
      codeSent: (String verificationId,[int forceResendingToken]){
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context){
            return AlertDialog(
              title:Text("Type the code here"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children:[
                  TextField(
                    controller: _codeController,
                  ),


                ]
              ),
              actions: [
                FlatButton(
                  child: Text("Confirm"),
                  textColor: Colors.white,
                  color: Colors.blue,
                  onPressed: () async{ //we've got to make the credential manually, jst incase the automatic one doesn't work
                  final code = _codeController.text.trim();
                  AuthCredential credential = PhoneAuthProvider.getCredential(verificationId: verificationId, smsCode: code);

                  AuthResult result = await _phoneauth.signInWithCredential(credential);

                  FirebaseUser user = result.user;

                  if(user!=null)
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                    } else{
                      print("Error");
                    }
        


                  }
                )
              ],
            );
          }
          );
      }, //gets called once the code is sent successfully to the user device
      codeAutoRetrievalTimeout: null);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:Container(
          padding: EdgeInsets.all(12),
          child:Form(
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              mainAxisAlignment:MainAxisAlignment.center,
              children:[
                Text("Login",style:TextStyle(color:Colors.lightBlue,fontSize:36,fontWeight:FontWeight.bold)),
                SizedBox(height: 16,),
                TextFormField(
                  decoration: InputDecoration(),
                  controller: _phoneController,
                ),
                SizedBox(height:16),
                Container(
                  width:double.infinity,
                  child:FlatButton(
                    child:Text("LOGIN"),
                    textColor:Colors.white,
                    padding:EdgeInsets.all(16),
                    onPressed: (){
                      final phone = _phoneController.text.trim();
                      loginUser(phone, context);
                    },
                    color: Colors.blue,
                  )
                )
              ]
            ),
          )
        ),
      ),
    );
  }
}