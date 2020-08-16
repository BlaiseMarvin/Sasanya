
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sasanya/models/user.dart';



class AuthService{
  //create model the firebase user to your own customization using defined User class in models
  

 

  //creating an instance of the firebase authentication service
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create a user object based on FirebaseUser
  User _userFromFirebaseUser(FirebaseUser user) {
    return user != null ? User(uid:user.uid) : null;
  }

  //signing in annonymously
    Future signInAnon() async{
    try{
         AuthResult result=await _auth.signInAnonymously();
         FirebaseUser user =result.user;
         return _userFromFirebaseUser(user);

    }
    catch(e)
    {
      print(e.toString());
      return null;

    }
  }

  

  //signing in with an email and password
  Future signInWithEmailAndPassword(String email,String password)
    async{
      try
        {
          AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
          FirebaseUser user = result.user;
          return _userFromFirebaseUser(user);
     

          }catch(e)
          {
            print(e.toString());
            return null;
          }

          }

  //register with an email and password
 
}