import 'package:equatable/equatable.dart';

class MyUserEntity extends Equatable {
  final String userId;
  final String email;
  final String name;

  const MyUserEntity({
    required this.userId,
    required this.name,
    required this.email,
  });

  Map<String, Object?> toDocument() {
    return {
      'userId': userId,
      'email': email,
      'name': name,
    };
  }

  static MyUserEntity fromDocument(Map<String, dynamic> doc) {
    return MyUserEntity(
      userId: doc['userId'],
      name: doc['name'],
      email: doc['email'],
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [userId, email, name];
}
