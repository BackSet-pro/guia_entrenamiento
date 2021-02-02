import 'package:flutter/material.dart';
import 'package:guia_entrenamiento/app/sign_in/social_button.dart';
import 'package:guia_entrenamiento/services/auth.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key key, @required this.auth}) : super(key: key);
  final AuthBase auth;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildContainer(),
      backgroundColor: Colors.grey[200],
    );
  }

  Future<void> _signInWithGoogle() async {
    try {
      await auth.signInWithGoogle();
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> _signInWithFacebook() async {
    try {
      await auth.signInWithFacebook();
    } catch (e) {
      print(e.toString());
    }
  }

  Widget _buildContainer() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            'assets/images/logo.png',
            height: 100,
          ),
          const SizedBox(
            height: 5.0,
          ),
          Text(
            "Inicio de Sesión",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 40,
          ),
          SocialButton(
            title: 'Continuar con Google',
            backgroundColor: Colors.white,
            assetPath: 'assets/images/google-logo.png',
            textColor: Colors.black87,
            onPressed: _signInWithGoogle,
          ),
          const SizedBox(
            height: 10.0,
          ),
          SocialButton(
            title: 'Continuar con Facebook',
            backgroundColor: Color(0xFF334D92),
            assetPath: 'assets/images/facebook-logo.png',
            textColor: Colors.white,
            onPressed: _signInWithFacebook,
          )
        ],
      ),
    );
  }
}
