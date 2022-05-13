import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    @JsonKey(ignore: true) String? id,
    required String name,
    required String photoURL,
    required String email,
  }) = _User;

  const User._();

  User toDomain() {
    return User(
      id: id,
      name: name,
      photoURL: photoURL,
      email: email,
    );
  }

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  factory User.fromFirebase(DocumentSnapshot doc) {
    return User.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }
}
