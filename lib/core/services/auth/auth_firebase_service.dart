// ignore_for_file: depend_on_referenced_packages

import 'dart:io';
import 'dart:async';
import 'package:volante/core/models/usuario.dart';
import 'package:volante/core/services/auth/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthFirebaseService implements AuthService {
  static Usuario? _currentUser;
  static final _userStream = Stream<Usuario?>.multi((controller) async {
    final authChanges = FirebaseAuth.instance.authStateChanges();
    await for (final user in authChanges) {
      _currentUser = user == null ? null : _toUsuario(user);
      controller.add(_currentUser);
    }
  });

  @override
  Usuario? get currentUser {
    return _currentUser;
  }

  @override
  Stream<Usuario?> get userChanges {
    return _userStream;
  }

  @override
  Future<void> signup(
    String name,
    String email,
    String password,
    File? image,
  ) async {
    final auth = FirebaseAuth.instance;
    UserCredential credential = await auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    if (credential.user == null) return;

    credential.user?.updateDisplayName(name);
    // credential.user?.updatePhotoURL(photoURL);
  }

  @override
  Future<void> login(String email, String password) async {}

  @override
  Future<void> logout() async {
    FirebaseAuth.instance.signOut();
  }

  static Usuario _toUsuario(User user) {
    return Usuario(
      id: user.uid,
      name: user.displayName ?? user.email!.split('@')[0],
      email: user.email!,
      imageUrl: user.photoURL ?? 'assets/images/avatar.png',
    );
  }
}
