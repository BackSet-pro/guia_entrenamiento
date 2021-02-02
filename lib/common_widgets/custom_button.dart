import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    @required this.child,
    this.onPressed,
    this.height: 50.0,
    this.borderRadius: 10.0,
    this.backgroundColor,
  }) : assert(height != null);
  final Widget child;
  final double height;
  final double borderRadius;
  final Color backgroundColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: RaisedButton(
        child: child,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius),
          ),
        ),
        color: backgroundColor,
        onPressed: onPressed,
      ),
    );
  }
}
