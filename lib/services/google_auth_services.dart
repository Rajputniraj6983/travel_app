import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuthServices{
  static GoogleAuthServices googleAuthServices = GoogleAuthServices._();
  GoogleAuthServices._();

 final GoogleSignIn googleSignIn = GoogleSignIn();

  Future<void> Googlesinginacc() async {
    GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount!.authentication;
    AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken);
    UserCredential userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
