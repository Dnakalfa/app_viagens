import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyD2Et3Ye8EofGT7uZnQmXi6ZAT5kTYXDXo",
            authDomain: "appviajens-836cf.firebaseapp.com",
            projectId: "appviajens-836cf",
            storageBucket: "appviajens-836cf.appspot.com",
            messagingSenderId: "143084655599",
            appId: "1:143084655599:web:7018284934ce7fff4ddc1a"));
  } else {
    await Firebase.initializeApp();
  }
}
