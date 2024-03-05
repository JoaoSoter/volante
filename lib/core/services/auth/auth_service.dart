import 'dart:io';
import 'package:volante/core/models/usuario.dart';
import 'package:volante/core/services/auth/auth_firebase_service.dart';

abstract class AuthService {
  Usuario? get currentUser;

  Stream<Usuario?> get userChanges;

  Future<void> signup(
    String name,
    String email,
    String password,
    File? image,
  );

  Future<void> login(
    String email,
    String password,
  );

  Future<void> logout();

  factory AuthService() {
    // return AuthMockService();
    return AuthFirebaseService();
  }
}
