import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:unggiffarine/models/user_model.dart';

class Informaion extends StatefulWidget {
  @override
  _InformaionState createState() => _InformaionState();
}

class _InformaionState extends State<Informaion> {
  UserModel userModel;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readUser();
  }

  Future<Null> readUser() async {
    await Firebase.initializeApp().then((value) async {
      await FirebaseAuth.instance.authStateChanges().listen((event) async {
        String uid = event.uid;
        print('uid Losing ==>> $uid');
        await FirebaseFirestore.instance
            .collection('user')
            .doc(uid)
            .snapshots()
            .listen((event) {});
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('This is Informaion'),
    );
  }
}
