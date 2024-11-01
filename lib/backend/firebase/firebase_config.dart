import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAVlq8eoDjCVwreeXDqBiIk95uk9aMF4i0",
            authDomain: "login-k3g6bm.firebaseapp.com",
            projectId: "login-k3g6bm",
            storageBucket: "login-k3g6bm.appspot.com",
            messagingSenderId: "398453157808",
            appId: "1:398453157808:web:b302b0ddd1cd7fcac9b075"));
  } else {
    await Firebase.initializeApp();
  }
}
