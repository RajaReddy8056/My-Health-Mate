import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDnm2inuXf3OoN_YTtNeOLKZKsB55ZCaro",
            authDomain: "myhealthmate-8dfab.firebaseapp.com",
            projectId: "myhealthmate-8dfab",
            storageBucket: "myhealthmate-8dfab.appspot.com",
            messagingSenderId: "332437971971",
            appId: "1:332437971971:web:3f6ab6d39ceaa7d1d55a36",
            measurementId: "G-2WY1TMPKRE"));
  } else {
    await Firebase.initializeApp();
  }
}
