import 'package:flutter/material.dart';
import 'package:guia_entrenamiento/services/auth.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key, @required this.auth}) : super(key: key);
  final AuthBase auth;

  Future<void> _signOut() async {
    try {
      await auth.signOut();
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Brigadas'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Bienvenido\n${auth.currentUser.displayName}'),
            FlatButton(
              onPressed: _signOut,
              child: Text('Cerrar sesión'),
            )
          ],
        ),
      ),
    );
  }
}
