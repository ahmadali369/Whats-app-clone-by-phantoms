import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';


enum Event{
  Add,
  Dell,
  Load
}



class NoteBloc{

  final _stateStreamController = StreamController<QuerySnapshot<Object?>>.broadcast();
  StreamSink<QuerySnapshot<Object?>> get statesink => _stateStreamController.sink;
  Stream<QuerySnapshot<Object?>> get statestream => _stateStreamController.stream;

  final _eventstreamcontroller = StreamController<Event>.broadcast();
  StreamSink<Event> get eventsink => _eventstreamcontroller.sink;
  Stream<Event> get eventstream => _eventstreamcontroller.stream;

  /// Event call in on pressed ==================================================
  ///
  /// make obj of NoteBloc Class
  // widget.noteBloc.eventsink.add(Event.Add);


  NoteBloc(){


    eventstream.listen((event) async{
      if(event == Event.Add){

        var snap = await AppManage().getCollection();
        statesink.add(snap);
      }
      if(event == Event.Dell){
        var snap = await AppManage().getCollection();
        statesink.add(snap);
      }
      if(event == Event.Load){
        var snap = await AppManage().getCollection();
        statesink.add(snap);
      }


    });


  }

  void dispose()
  {
    _stateStreamController.close();
    _eventstreamcontroller.close();
  }
}







class AppManage {
  Future<void> Write(
      TextEditingController? task, String type, DateTime date) async {
    var userCredential = await FirebaseAuth.instance.signInAnonymously();
    userCredential.user?.uid;

    await FirebaseFirestore.instance
        .collection('users')
        .doc(userCredential.user?.uid)
        .collection('notes')
        .add({
      "task": task?.text.toString(),
      "type": type,
      "date": date,
      "done": false
    });
  }

  Future<void> Dell(String docId) async {
    var userCredential = await FirebaseAuth.instance.signInAnonymously();
    userCredential.user?.uid;
    await FirebaseFirestore.instance
        .collection('users')
        .doc(userCredential.user?.uid)
        .collection('notes')
        .doc(docId)
        .delete();
  }

  Future<QuerySnapshot> getCollection() async {
    var userCredential = await FirebaseAuth.instance.signInAnonymously();
    userCredential.user?.uid;

    final CollectionReference collection = FirebaseFirestore.instance
        .collection('users')
        .doc(userCredential.user?.uid)
        .collection('notes');
    final QuerySnapshot snapshot = await collection.get();
    print(snapshot.size);

    return snapshot;
  }
}





