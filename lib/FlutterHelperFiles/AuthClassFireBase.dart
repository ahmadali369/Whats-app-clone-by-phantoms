/// Add firebase_auth
/// Add firebase_core
/// Add in Main Async -> WidgetsFlutterBinding.ensureInitialized(); await Firebase.initializeApp();
/// Add in Main -> debugShowCheckedModeBanner: false,


import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationHelper{

  final FirebaseAuth _auth = FirebaseAuth.instance;
  get user => _auth.currentUser;

/// ============================= Anonymous ============================================


  Future signInAnonymouslyFunc()async{
    FirebaseAuth.instance.signInAnonymously();
  }


/// ======================= With Email and Password ======================================


  /// Sign up ===================

  Future signUp(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  /// helper in Ui ================== onpressed


  // AuthenticationHelper()
  //     .signUp(email: email, password: password)
  //     .then((result) {
  // if (result == null) {
  // Navigator.pushReplacement(context,
  // MaterialPageRoute(builder: (context) => Home()));
  // } else {
  // Scaffold.of(context).showSnackBar(SnackBar(
  // content: Text(
  // result,
  // style: TextStyle(fontSize: 16),
  // ),
  // ));
  // }
  // });


// ======================================================


  /// SignIn =================



  Future signIn(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  /// helper in ui =================  onpressed


  // AuthenticationHelper()
  //     .signIn(email: email, password: password)
  //     .then((result) {
  // if (result == null) {
  // Navigator.pushReplacement(context,
  // MaterialPageRoute(builder: (context) => Home()));
  // } else {
  // Scaffold.of(context).showSnackBar(SnackBar(
  // content: Text(
  // result,
  // style: TextStyle(fontSize: 16),
  // ),
  // ));
  // }
  // });


  //======================================================



/// SingOut ===================== onpressed


  Future signOut() async {
    await _auth.signOut();

    print('signout');
  }



// =============================================================




}

