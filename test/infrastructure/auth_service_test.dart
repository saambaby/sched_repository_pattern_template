import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mockito/mockito.dart';

import 'package:sched/infrastructure/auth/repository/auth_service.dart';
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';

class MockGoogleSignIn extends Mock implements GoogleSignIn {}

class MockFirebaseAuth extends Mock implements FirebaseAuth {}
class MockFirebaseUser extends Mock implements User{}
class MockAuthResult extends Mock implements ConfirmationResult{}

void main() {
  MockFirebaseAuth firebaseAuth = MockFirebaseAuth();
  MockGoogleSignIn googleSignIn = MockGoogleSignIn();
  AuthService authService= AuthService(firebaseAuth: firebaseAuth, googleSignIn: googleSignIn);
  setUp(() {
    firebaseAuth = MockFirebaseAuth();
    googleSignIn = MockGoogleSignIn();
    authService= AuthService(firebaseAuth: firebaseAuth, googleSignIn: googleSignIn);
  });
  group('User SignIn ',(){


  test('should return a unit with right when the sign in is successful',() async{
    // arrange
    // when( await firebaseAuth.signInWithEmailAndPassword(email: 'sam@gmail'
    //     '.com', password: 'test')).thenAnswer( (_){
    //   _user.add(MockFirebaseUser());
    //   return _user;
    // } );



  });
  });
}
