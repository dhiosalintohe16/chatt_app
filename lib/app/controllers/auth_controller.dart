import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tierra_app/app/routes/app_pages.dart';

class AuthController extends GetxController {
  //TODO: Implement AuthController

  var isSkipIntro = false.obs;
  var isAuth = false.obs;

  GoogleSignIn _googleSignIn = GoogleSignIn();
  GoogleSignInAccount? currentUser;
  UserCredential? userCredential;

  Future<void> loginGoogle() async {
    try {
      //ini untuk menghandle kebocoran data user sebelum login
      await _googleSignIn.signOut();

      //ini untuk mendapatkan google account
      await _googleSignIn.signIn().then((value) => currentUser = value);
      print(currentUser);

      //mengecek status login
      final isSignIn = await _googleSignIn.isSignedIn();

      if(isSignIn) {
        //kondisi login berhasil
        print("Login berhasil");
        print(currentUser);

        final googleAuth = await currentUser!.authentication;

        final credential = GoogleAuthProvider.credential(
          idToken: googleAuth.idToken,
          accessToken: googleAuth.accessToken,
        );

        // simpan di firebase
        await FirebaseAuth.instance.signInWithCredential(credential).
        then((value) => userCredential = value);

        print("User Credential");
        print(userCredential);

        isAuth.value=true;
        Get.offAllNamed( Routes.HOME);

      }
    } catch (error) {
      print(error);
    }
  }

  Future<void> loginFb() async {
    try {
      //ini untuk menghandle kebocoran data user sebelum login
      await _googleSignIn.signOut();

      //ini untuk mendapatkan google account
      await _googleSignIn.signIn().then((value) => currentUser = value);
      print(currentUser);

      //mengecek status login
      final isSignIn = await _googleSignIn.isSignedIn();

      if(isSignIn) {
        //kondisi login berhasil
        print("Login berhasil");
        print(currentUser);

        final googleAuth = await currentUser!.authentication;

        final credential = GoogleAuthProvider.credential(
          idToken: googleAuth.idToken,
          accessToken: googleAuth.accessToken,
        );

        // simpan di firebase
        await FirebaseAuth.instance.signInWithCredential(credential).
        then((value) => userCredential = value);

        print("User Credential");
        print(userCredential);

        isAuth.value=true;
        Get.offAllNamed( Routes.HOME);

      }
    } catch (error) {
      print(error);
    }
  }
}
