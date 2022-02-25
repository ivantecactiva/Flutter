import 'package:flutter/material.dart';
import 'package:principales_componentes/src/pages/alert_page.dart';
import 'package:principales_componentes/src/providers/menu_provider.dart';
import 'package:principales_componentes/src/utils/icon_string_util.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes Dart"),
      ),
      body: _examples(),
    );
  }

  Widget _examples() {
    /* menuProvider.cargarData().then((options) {
      
    });
    return ListView(
      children: _itemsJson(),
    ); */
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _itemsJson(snapshot.data!, context),
        );
      },
    );
  }

  List<Widget> _itemsJson(List<dynamic> data, BuildContext context) {
    final List<Widget> options = [];
    data.forEach((option) {
      final widgetTemp = ListTile(
        title: Text(option['texto']),
        leading: getIcon(option['icon']),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.blue.shade200,
        ),
        onTap: () {
          /*
          Forma de navegacion 
          final route = MaterialPageRoute(builder: (context) {
            return AlertPage();
          });
          Navigator.push(context, route); */
          Navigator.pushNamed(context, option['ruta']);
        },
      );
      options.add(widgetTemp);
    });
    return options;
  }
}
