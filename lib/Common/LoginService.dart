import 'package:firebase_auth/firebase_auth.dart';
import 'package:hommey/Common/DBService.dart';
import 'package:hommey/Models/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User _userFromModel (FirebaseUser user){
      return user !=null ? User(uid: user.uid) : null ;
  }


  Stream<User> get user{
      return _auth.onAuthStateChanged.
      // map((FirebaseUser user) => _userFromModel(user));
      map(_userFromModel);
  }


    // Login
    Future signIn(String email, String password)async{
      try{
        AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
        FirebaseUser user = result.user;
        return _userFromModel(user);
      }catch(e){
        return null;
      }
    }

    //signUp 
      Future createNewUser(String email, String password)async{
      try{
        AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
        FirebaseUser user = result.user;

        await DataBaseService(uid: user.uid).addNewFood('rice', '15');

        return _userFromModel(user);
      }catch(e){
        return null;
      }
    }

    //signout
    Future signOut() async{
      try{
       return await _auth.signOut();
      }
      catch(e){

      }
    }
}