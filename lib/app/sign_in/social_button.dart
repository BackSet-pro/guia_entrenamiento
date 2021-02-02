import 'package:flutter/material.dart';
import 'package:guia_entrenamiento/common_widgets/custom_button.dart';

class SocialButton extends CustomButton {
  SocialButton(
      {@required String assetPath,
      @required String title,
      Color textColor,
      Color backgroundColor,
      VoidCallback onPressed})
      : assert(assetPath != null, title != null),
        super(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(assetPath),
              Text(
                title,
                style: TextStyle(
                  color: textColor,
                  fontSize: 15.0,
                ),
              ),
              Opacity(
                opacity: 0.0,
                child: Image.asset(assetPath),
              ),
            ],
          ),
          backgroundColor: backgroundColor,
          onPressed: onPressed,
        );
}
