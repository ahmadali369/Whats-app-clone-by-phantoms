/// Strarter main ========================================================
///
///
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   var userCredential = await FirebaseAuth.instance.signInAnonymously();
//   runApp(
//     MaterialApp(
//       home: AnimatedLoading(),
//       //home: MyApp(),
//     ),
//   );
// }


/// Size ================================================================ Add bellow build
// double width = MediaQuery.of(context).size.width;
// double height = MediaQuery.of(context).size.height;
//==========================================

/// Color ===========================================================
// Color.fromRGBO(66, 39, 90, 100)
// Color(0xFF0f0c29), // blue sky
//==========================================

/// Substring =======================================================
//.toString().substring(0, 10)

/// Read passed data to widget ======================================
// '${widget.name}',


/// Routs & Navigation ========================================= Add in Material App
///
/// add in MaterialApp --> initialRoute: '/',
/// Next --> Navigator.of(context).pushNamed('/loginPageNavigator');
/// Back --> Navigator.of(context).pop();
// routes: <String, WidgetBuilder>{
//   '/': (BuildContext context) => const HomePage(),
//   '/homepageNavigator': (BuildContext context) => const HomePage(),
// },
//===========================================

/// Anonymous Navigate ===============================================================
// Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Login()));

//===========================================

/// Time Comparison Funcs =============================================================
///
/// example
///  DateTime date1 = DateTime.parse(user.lastWithdrawDate.toString());
///  DateTime date2 = DateTime.parse(Timestamp.now().toDate().toString());
///  time = timeBetween(date1, date2)
///  days = daysBetween(date1, date2)



/// Hours =========

// int timeBetween(DateTime from, DateTime to) {
//   from = DateTime(from.year, from.month, from.day, from.hour, from.minute);
//   to = DateTime( to.year, to.month, to.day,to.hour, to.minute);
//   return (to.difference(from).inHours);
// }

/// Days =========

// int daysBetween(DateTime from, DateTime to) {
//   from = DateTime(from.year, from.month, from.day);
//   to = DateTime(to.year, to.month, to.day);
//   return (to.difference(from).inHours / 24).round();
// }

//===============================================================

/// Fix Decimal String number ==========================================================
//    .toStringAsFixed(2)
//================================================================


/// Valid Email ========================================================================
///
/// add email_validator
// EmailValidator.validate(email) == true|false
//================================================================

/// SnackBar ============================================================================
//  final text = e.message;//errorCode
//  final snackbar = SnackBar(
// content: Text(text),
// backgroundColor: Colors.deepPurple,
// );
//  ScaffoldMessenger.of(context).showSnackBar(snackbar);


/// Url_launcher =======================================================================
///
/// add --> url_launcher
// final Uri _ary = Uri.parse('https://live.arynews.tv/mobile/');
//  ===========
//  Future<void> _launchUrl(Uri url) async {
//     if (!await launchUrl(url)) {
//       throw 'Could not launch $url';
//     }
//   }
//   ============
//   onPressed: () async {
//     await _launchUrl(_ary);
//   },







