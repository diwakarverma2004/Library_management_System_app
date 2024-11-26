import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBRNHN4-796R_PV72zvE9n8FfNtQPIZfRM",
            authDomain: "lab-website-4a6be.firebaseapp.com",
            projectId: "lab-website-4a6be",
            storageBucket: "lab-website-4a6be.appspot.com",
            messagingSenderId: "470033430724",
            appId: "1:470033430724:web:63c7d900da0a6730197191"));
  } else {
    await Firebase.initializeApp();
  }
}
