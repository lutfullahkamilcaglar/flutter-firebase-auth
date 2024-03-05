import 'package:equatable/equatable.dart';
import 'package:user_repository/src/entities/user_entity.dart';

class MyUser extends Equatable {
  final String userId;
  final String email;
  final String name;

  const MyUser({
    required this.userId,
    required this.name,
    required this.email,
  });

  static const empty = MyUser(
    userId: '',
    name: '',
    email: '',
  );

  MyUser copyWith({
    String? userId,
    String? email,
    String? name,
  }) {
    return MyUser(
      userId: userId ?? this.userId,
      name: name ?? this.name,
      email: email ?? this.email,
    );
  }

  MyUserEntity toEntity() {
    return MyUserEntity(
      userId: userId,
      email: email,
      name: name,
    );
  }

  static MyUser fromEntity(MyUserEntity entity) {
    return MyUser(
      userId: entity.userId,
      name: entity.name,
      email: entity.email,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [userId, email, name];
}
