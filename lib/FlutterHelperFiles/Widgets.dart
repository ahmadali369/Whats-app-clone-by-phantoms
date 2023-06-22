import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'Model.dart';
import 'package:email_validator/email_validator.dart';

/// Gradiant Container =========================================================
class ContainerGradiant extends StatelessWidget {
  const ContainerGradiant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Color(0xff12225a),
            Color(0xff738b6d),
            Color(0xFF24243e), // blue sky
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,

          /// also try with --> stops: <double>[0.4, 1.0, 1.0],
        ),
      ),
    );
  }
}

/// Gradiant Text ==============================================================
///
/// Add --> simple_gradient_text
class TextGradiant extends StatelessWidget {
  const TextGradiant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GradientText(
      'Sample Text',
      style: const TextStyle(
        fontSize: 20.0,
        fontFamily: 'Pacifico',
        //decoration: TextDecoration.underline,
      ),
      colors: const [Color(0xff0d10aa), Color(0xff0adbca)],
    );
  }
}

///========================================================== FutureBuilder ================================================================
class FutureBuilderWidget extends StatelessWidget {
  const FutureBuilderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return FutureBuilder(
      future: _Name(context),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Container(
            child: Text(
              (snapshot.data as String),
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white70,
                  fontFamily: 'Comforta',
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          );
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Container(
            width: width * 0.05,
            height: height * 0.03,
            child: CircularProgressIndicator(),
          );
        }

        return Text(
          '--',
          style: TextStyle(
              color: Colors.white70,
              fontFamily: 'Comforta',
              fontSize: 16,
              fontWeight: FontWeight.bold),
        );
      },
    );
  }

  ///  Helper for Future Builder
  Future<String> _Name(BuildContext context) async {
    late String text;

    await FireBaseCurrency.loadCurrency(context).then((value) {
      text = value.name;
    });

    return text;
  }
}

///  Helper for Future Builder
class FireBaseCurrency extends ChangeNotifier {
  FireBaseCurrency();
  static Future<Demo> loadCurrency(BuildContext) async {
    return await FirebaseFirestore.instance
        .collection('CollectionName')
        .doc("DocName")
        .get()
        .then((value) => Demo.fromMap(value.data()));
  }
}
///================= End Future Builder
//==============================================================================

/// Login Fields ===============================================================
/// add --> email_validator
/// add --> firebase_auth


class TextFieldsEmailPass extends StatefulWidget {
  const TextFieldsEmailPass({Key? key}) : super(key: key);

  @override
  State<TextFieldsEmailPass> createState() => _TextFieldsEmailPassState();
}

class _TextFieldsEmailPassState extends State<TextFieldsEmailPass> {

  bool isLoading = false;


  TextEditingController _emailEditingController = TextEditingController();
  TextEditingController _passwordEditingController = TextEditingController();




  @override
  void dispose() {
    // TODO: implement dispose

    _passwordEditingController.dispose();
    _emailEditingController.dispose();


    super.dispose();
  }



  @override
  Widget build(BuildContext context) {

    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.height;


    return Row(
      children: [

        SizedBox(height: Height * 0.1),
        const Text('LogIn',
            style: TextStyle(
                color: Colors.white70,
                fontSize: 22,
                fontFamily: 'Comforta',
                fontWeight: FontWeight.bold)),
        SizedBox(height: Height * 0.05),
        Container(
          padding: EdgeInsets.only(left: Width * 0.04),
          width: Width * 0.9,
          decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            controller: _emailEditingController,
            cursorColor: Colors.pink,
            style: const TextStyle(
                color: Colors.pink, fontWeight: FontWeight.bold),

            decoration: const InputDecoration(

              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,



              hintText: 'Email',
              hintStyle: TextStyle(
                  color: Colors.deepPurpleAccent,

                  fontFamily: 'Comforta'),
              // prefixIcon: Icon(Icons.email_outlined, color: Colors.deepPurpleAccent,),
            ),
            onChanged: (value) {
              setState(() {
                //_email = value;
              });
            },
          ),
        ),
        SizedBox(height: Height * 0.02),
        Container(
          padding: EdgeInsets.only(left: Width * 0.04),
          width: Width * 0.9,
          decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(



            controller: _passwordEditingController,
            obscureText: true,

            cursorColor: Colors.pink,
            style: const TextStyle(
                color: Colors.pink, fontWeight: FontWeight.bold),


            decoration: const InputDecoration(

              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,

              hintText: 'Password',
              hintStyle: TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontFamily: 'Comforta'),
            ),
            onChanged: (value) {
              setState(() {
                //_password = value;
              });
            },
          ),
        ),
        SizedBox(height: Height * 0.08),

        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          width: Width * 0.25,
          height: Height * 0.07,
          child: TextButton(
            onPressed: () {
              //Navigator.of(context).pushNamed('/homepageNavigator');

              if (_passwordEditingController.text.trim().isNotEmpty ||
                  _emailEditingController.text.trim().isNotEmpty) {
                if (EmailValidator.validate(
                    _emailEditingController.text.trim())) {
                  if (_emailEditingController.text.trim().isNotEmpty) {
                    if (_passwordEditingController.text.trim().isNotEmpty) {
                      setState((){
                        isLoading = true;
                      });
                      FirebaseAuth.instance
                          .signInWithEmailAndPassword(
                          email: _emailEditingController.text.trim(),
                          password: _passwordEditingController.text.trim())
                          .then((user) {

                        setState((){
                          isLoading = false;
                          Navigator.of(context)
                              .pushReplacementNamed('/homepageNavigator');
                        });








                      }).catchError((e) {
                        //var errorCode = e.message;

                        setState((){
                          isLoading = false;
                        });

                        final text = e.message; //errorCode;
                        final snackbar = SnackBar(

                          content: Text(text),
                          backgroundColor: Colors.deepPurple,
                        );



                        ScaffoldMessenger.of(context)
                            .showSnackBar(snackbar);
                      });
                    } else {
                      const  text = 'Please enter password!';
                      const  snackbar =  SnackBar(
                        content: Text(text),
                        backgroundColor: Colors.deepPurple,
                      );

                      ScaffoldMessenger.of(context)
                          .showSnackBar(snackbar);
                    }
                  } else {
                    const  text = 'Please enter email address!';
                    const snackbar =  SnackBar(
                      content: Text(text),
                      backgroundColor: Colors.deepPurple,
                    );

                    ScaffoldMessenger.of(context)
                        .showSnackBar(snackbar);
                  }
                } else {
                  const  text = 'Please enter valid email address!';
                  const snackbar = SnackBar(
                    content: Text(text),
                    backgroundColor: Colors.deepPurple,
                  );

                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                }
              } else {
                const  text =
                    'Please enter email and password!'; //errorCode;
                const snackbar = SnackBar(
                  content: Text(text),
                  backgroundColor: Colors.deepPurple,
                );

                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              }
            },
            child: const Text(
              'LogIn',
              style: TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontFamily: 'Comforta',
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(height: Height * 0.15),
        const Text(
          'New Here?',
          style:
          TextStyle(color: Colors.white70, fontFamily: 'Comforta'),
        ),


        SizedBox(height: Height * 0.02),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          width: Width * 0.20,
          height: Height * 0.06,
          child: TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/signupNavigator');
            },
            child: const Text(
              'SignUp',
              style: TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontFamily: 'Comforta',
                  fontWeight: FontWeight.bold),
            ),
          ),

        ),



      ],
    );
  }
}
//==============================================================================
/// Button =====================================================================




class TextButtonWithContainer extends StatelessWidget {
  const TextButtonWithContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.height;

    return  Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      width: Width * 0.25,
      height: Height * 0.07,
      child: TextButton(
        onPressed: () {

        },
        child: const Text(
          'LogIn',
          style: TextStyle(
              color: Colors.deepPurpleAccent,
              fontFamily: 'Comforta',
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

//==============================================================================


/// Circular Avatar ===============================================================
//CircleAvatar(
//     backgroundColor: Colors.transparent,
//     child: SizedBox(
//       width: 60,
//       height: 60,
//       child: ClipOval(
//         child: Image.asset("Assets/Images/music_default.png",
//       ),
//     )
// )





