import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sched/domain/auth/value_objects.dart';
import 'package:sched/infrastructure/auth/auth_service.dart';
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
    BehaviorSubject<MockFirebaseUser> _user = BehaviorSubject<MockFirebaseUser>();
    when(firebaseAuth.authStateChanges()).thenAnswer((_){
      return _user;
    });

  test('should return a unit with right when the sign in is successful',() async{
    // arrange
    // when( await firebaseAuth.signInWithEmailAndPassword(email: 'sam@gmail'
    //     '.com', password: 'test')).thenAnswer( (_){
    //   _user.add(MockFirebaseUser());
    //   return _user;
    // } );

    //act
    final result = await authService.signInWithEmailAndPassword(emailAddress: EmailAddress('sam@gmail.com'), password: Password('test'));
    verify(firebaseAuth.signInWithEmailAndPassword(email: 'test', password: 'test'));
    expect(result, const Right(unit));

  });
  });
}
