
import 'package:firebase_auth/firebase_auth.dart';



class AuthService{
  //create model the firebase user to your own customization using defined User class in models
 

  //creating an instance of the firebase authentication service
  final FirebaseAuth _auth = FirebaseAuth.instance;

  

  //signing in with an email and password
  Future signInWithEmailAndPassword(String email,String password)
    async{
      try
        {
          AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
          FirebaseUser user = result.user;
          return user;
     

          }catch(e)
          {
            print(e.toString());
            return null;
          }

          }
}