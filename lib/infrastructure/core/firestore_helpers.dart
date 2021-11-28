import 'package:cloud_firestore/cloud_firestore.dart';

import '../../domain/auth/interface/auth_interface.dart';
import '../../domain/core/errors.dart';
import '../../injectable.dart';

extension FireStoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = getIt<IAuthService>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError);
    return FirebaseFirestore.instance
        .collection('users')
        .doc(user.id.getOrCrash());
  }
}
