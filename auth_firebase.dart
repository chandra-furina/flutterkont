import 'package:firebase_auth/firebase_auth.dart';

class AuthFirebase {
  static Future<User?> login(String email, String password) async {
    final auth = FirebaseAuth.instance;

    try {
      UserCredential user = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
        );
        return user.user;
    } on FirebaseAuthException catch (e) {
      throw e.message ?? "Login Gagal.";
    } catch (e) {
      throw e;
    }
  }


  static Future<void> ForgotPassword(String email) async {
    final auth = FirebaseAuth.instance;

    
    try {
    await auth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      throw e.message ?? "Gagal mengirim email reset password.";
    } catch (e) {
      throw "terjadi kesalahan.";
    }
  }
}