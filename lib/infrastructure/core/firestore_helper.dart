import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:service_motor_mobile/domain/auth/i_auth_facade.dart';
import 'package:service_motor_mobile/domain/core/errors.dart';
import 'package:service_motor_mobile/injection.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance.collection('users').doc(user.email);
  }
}
