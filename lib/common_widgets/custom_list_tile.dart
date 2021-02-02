import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  CustomListTile({
    @required this.title,
    this.leading,
    this.onTap,
  }) : assert(title != null);
  final Widget title;
  final Widget leading;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: leading,
        title: title,
        onTap: onTap,
      ),
    );
  }
}
