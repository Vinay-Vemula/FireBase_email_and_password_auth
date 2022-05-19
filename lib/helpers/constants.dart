import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_and_password_auth_using_firebase/controllers/appcontroller.dart';
import 'package:firebase_core/firebase_core.dart';

AppController appController = AppController.instance;
final Future<FirebaseApp> firebaseInitialization = Firebase.initializeApp();
FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
