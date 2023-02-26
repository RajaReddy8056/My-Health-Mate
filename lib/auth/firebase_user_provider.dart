import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class MyhealthmateFirebaseUser {
  MyhealthmateFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

MyhealthmateFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<MyhealthmateFirebaseUser> myhealthmateFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<MyhealthmateFirebaseUser>(
      (user) {
        currentUser = MyhealthmateFirebaseUser(user);
        return currentUser!;
      },
    );
