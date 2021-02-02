import 'package:flutter/material.dart';
import 'package:guia_entrenamiento/app/brigada/brigada_list_tile.dart';
import 'package:guia_entrenamiento/services/auth.dart';

class BrigadaPage extends StatefulWidget {
  const BrigadaPage({Key key, @required this.auth}) : super(key: key);
  final AuthBase auth;

  @override
  _BrigadaPageState createState() => _BrigadaPageState();
}

class _BrigadaPageState extends State<BrigadaPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Brigadas'),
      ),
      body: ListView(
        children: [
          BrigadaListTile(
            title: '17 B.S “PASTAZA”',
            iconData: Icons.group_sharp,
            onTap: () {},
          ),
          BrigadaListTile(
            title: '7 B.I.MOT “LOJA”',
            iconData: Icons.group_sharp,
            onTap: () {},
          ),
          BrigadaListTile(
            title: '13 B.I.MOT “PICHINCHA”',
            iconData: Icons.group_sharp,
            onTap: () {},
          ),
          BrigadaListTile(
            title: '9 B.F.E “PATRIA”',
            iconData: Icons.group_sharp,
            onTap: () {},
          ),
          BrigadaListTile(
            title: '5 B.I.MOT “GUAYAS”',
            iconData: Icons.group_sharp,
            onTap: () {},
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
