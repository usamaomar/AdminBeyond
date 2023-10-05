import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDL7PBybrVDYtkUgLRcjI56A1ayWiBm4lU",
            authDomain: "beyoundtest.firebaseapp.com",
            projectId: "beyoundtest",
            storageBucket: "beyoundtest.appspot.com",
            messagingSenderId: "366788228499",
            appId: "1:366788228499:web:ab1382e158f0fb2707e466",
            measurementId: "G-Z8H6GH0M0T"));
  } else {
    await Firebase.initializeApp();
  }
}
