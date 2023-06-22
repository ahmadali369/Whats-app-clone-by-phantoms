
/// Update firebase Doc ==================================================================
//    FirebaseFirestore.instance.collection('users').doc(CurrentUser.uid).update(
//         {'workingDay': FieldValue.increment(day)});


/// Read firebase Doc ==================================================================== Doc to dart_Obj
//    var level = await FirebaseFirestore.instance.collection('collectionName').doc(
//         "docName").get().then((value) => LevelData.fromMap(value.data()));


/// Make new Doc & Collection Firebase ==========================================================================
//    FirebaseFirestore.instance.collection('users').doc(userID).set({
//       'role': 'user',
//       'title': 'User',
//
//     }).then((value) async {

//     }).catchError((e) {
//       print(e);
//     });
//   }

/// Collection & Dec isEmpty check Firebase ====================================
///
/// Call --> bool flag = await hasDeposits(userid);
//  Future<bool> hasDeposits(String? uid) async {
//     CollectionReference collectionReference = FirebaseFirestore.instance
//         .collection("users").doc(uid).collection("deposits");
//     QuerySnapshot querySnapshot = await collectionReference.get();
//     return querySnapshot.docs.isEmpty;
//   }

/// Stream & Future - flutter Objects ============================================

/// Future =============

// Future<Days> getDays() async{
//   var snap = await _dbC.collection('Days').doc('daydoc').get();
//   return Days.fromMap(snap.data());
// }
/// Stream =============

// Stream<Days> streamD() {
//   return _db
//       .collection('Days')
//       .doc('daydoc')
//       .snapshots()
//       .map((snap) => Days.fromMap(snap.data()));
// }

/// Get Doc Id firebase ====================================================================== of collection snapshot
///
//print(snapshot.data.docs[index].reference.id);

/// Get field Data from All Docs firebase ==================================================== of Collection QuerySnapshot
// QuerySnapshot l2usersSnap = await FirebaseFirestore.instance.collection(
//         'users').doc(Currentuser.uid).collection('l2').get();
//   if (l2usersSnap.size != 0) {
//       final allData2 = l2usersSnap.docs.map((doc) => doc.get('id'))
//           .toList(); // l1 u
//      }

/// Query firebase ============================================================================ With where
//    QuerySnapshot qShot =
//     await FirebaseFirestore.instance.collection('users').where(
//         'uid', isEqualTo: uid).get();


/// Get Image Firebase Storage ================================================================= with future builder.
///
/// Add it outside widget ==========
//class FireStorageService extends ChangeNotifier {
//   FireStorageService();
//   static Future<dynamic> loadImage(BuildContext context, String Image) async {
//     return await FirebaseStorage.instance.ref().child(Image).getDownloadURL();
//   }
// }
/// Add it inside statful widget ==========
// Future<Widget> _getImage(BuildContext context, String imageName) async {
//   late Image image;
//   await FireStorageService.loadImage(context, imageName).then((value) {
//     image = Image.network(
//       value.toString(),
//       fit: BoxFit.scaleDown,
//     );
//   });
//   return image;
// }
/// future builder =============
//      Container(
//         width: Width * 0.5,
//         child: FutureBuilder(
//           future: _getImage(context, 'trxaddress.png'),
//           builder: (context, snapshot) {
//                 if (snapshot.connectionState ==
//                     ConnectionState.done) {
//                      return Container(
//                      child: snapshot.data as Widget,
//                      );
//                      }
//                 if (snapshot.connectionState ==
//                     ConnectionState.waiting) {
//                      return Container(
//                      width: Width * 0.1,
//                       height: Height * 0.06,
//                       child: const CircularProgressIndicator(),
//                       );
//                        }
//
//                       return Container();
//                       },
//           ),
//    ),

/// Stream QuerySnapshot ================================================================================ With Stream builder
///
/// Snapshot ============ add it above buildfucn
//   final Stream<QuerySnapshot> depReqs = FirebaseFirestore.instance.collection('depositRequests').where('status' , isEqualTo: false).where('uid', isEqualTo: FirebaseAuth.instance.currentUser?.uid.toString()).snapshots();
/// StreamBuilder ============= add in coloumn
//    Expanded(
//     child: StreamBuilder<QuerySnapshot>(
//      stream: depReqs,
//      builder:  (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
//
//      if(snapshot.hasError){
//             return const Text('somting went wrong', style: TextStyle(color: Colors.white),);
//              }
//             if(snapshot.connectionState == ConnectionState.waiting){
//             return const Text('loading...', style: TextStyle(color: Colors.white),);
//              }
//
//              final data = snapshot.requireData;
//               return ListView.builder(
//                 shrinkWrap: true,
//                 itemCount: data.size,
//                 itemBuilder: (context, index){
//
//           if(data.size == 0){
//             return Text('Empty', style: TextStyle(color: Colors.white));
//
//             }
//
//            return OpenReqeustTile(amount: data.docs[index]['amount'],type: 'Deposit',discription: '___');
//
//           // return Text('Amount: ${data.docs[index]['amount']}', style: TextStyle(color: Colors.white, fontSize: 20),);
//            }
//         );
//          }
//          ),
//         ),
