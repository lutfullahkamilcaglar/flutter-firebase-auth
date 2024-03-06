import 'package:firebase_auth/firebase_auth.dart';
import 'package:user_repository/src/models/user.dart';

abstract class UserRepository {
  Stream<User?> get user;

  Future<MyUser> signUp(MyUser myUser, String password);

  Future<void> setUserData(MyUser user);

  Future<void> singIn(String email, String password);

}