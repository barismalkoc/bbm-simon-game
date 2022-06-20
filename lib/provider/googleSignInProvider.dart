import 'package:bbm_simon/databaseHelper/dataBaseService.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInProvider extends ChangeNotifier {
  final googleSignIn = GoogleSignIn();

  GoogleSignInAccount? _user;

  Future googleLogin() async {
    try {
      final googleUser = await googleSignIn.signIn();

      if (googleUser == null) {
        return;
      }

      _user = googleUser;
      final googleAuth = await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await FirebaseAuth.instance.signInWithCredential(credential);

      await DataBaseService(uid: _user!.id).updateUserScore(1, 3, 4);
      await DataBaseService(uid: _user!.id).updateEasyLevelSCore(3);
    } catch (exception) {
      print(exception.toString());
    } finally {
      notifyListeners();
    }
  }

  Future googleLogOut() async {
    try {
      await googleSignIn.disconnect();
      FirebaseAuth.instance.signOut();
    } catch (exception) {
      print(exception.toString());
    }
  }
}
