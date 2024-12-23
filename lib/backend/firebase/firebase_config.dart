import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCjHFRtWCvdzyV99MkPM2TWn-f16flai9M",
            authDomain: "flutter-flow-54-dev.firebaseapp.com",
            projectId: "flutter-flow-54-dev",
            storageBucket: "flutter-flow-54-dev.firebasestorage.app",
            messagingSenderId: "681885638475",
            appId: "1:681885638475:web:7bab16b2219d83106392ce"));
  } else {
    await Firebase.initializeApp();
  }
}
