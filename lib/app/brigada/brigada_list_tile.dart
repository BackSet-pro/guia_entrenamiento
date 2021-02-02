import 'package:flutter/material.dart';
import 'package:guia_entrenamiento/common_widgets/custom_list_tile.dart';

class BrigadaListTile extends CustomListTile {
  BrigadaListTile({
    @required String title,
    IconData iconData,
    VoidCallback onTap,
  }) : super(
          title: Text(
            title,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: Icon(iconData),
          onTap: onTap,
        );
}
