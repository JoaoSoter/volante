// ignore_for_file: prefer_const_constructors

import 'dart:io';
import 'dart:async';
import 'dart:math';
import 'package:volante/core/models/usuario.dart';
import 'package:volante/core/services/auth/auth_service.dart';

class AuthMockService implements AuthService {
  static final _defaultUser = Usuario(
    id: '1',
    name: 'Teste',
    email: 'teste@gmail.com',
    imageUrl: 'assets/images/avatar.png',
  );

  static final Map<String, Usuario> _users = {
    _defaultUser.email: _defaultUser,
  };
  static Usuario? _currentUser;
  static MultiStreamController<Usuario?>? _controller;
  static final _userStream = Stream<Usuario?>.multi((controller) {
    _controller = controller;
    _updateUser(_currentUser);
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
    final newUser = Usuario(
      id: Random().nextDouble().toString(),
      name: name,
      email: email,
      imageUrl: image?.path ?? 'assets/images/avatar.png',
    );

    _users.putIfAbsent(email, () => newUser);
    _updateUser(newUser);
  }

  @override
  Future<void> login(String email, String password) async {
    _updateUser(_users[email]);
  }

  @override
  Future<void> logout() async {
    _updateUser(null);
  }

  static void _updateUser(Usuario? user) {
    _currentUser = user;
    _controller?.add(_currentUser);
  }
}
