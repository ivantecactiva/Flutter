import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina de card"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        /* padding: EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 10.0,
        ), */
        children:<Widget>[
          _cardTypeOne()
          ],
      ),
    );
  }

  Widget _cardTypeOne() {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('Titulo de la carta', style: TextStyle(fontSize: 25),),
              subtitle: Text('Descripcion de la carta, texto largo mmm 2233 3333', style: TextStyle(fontSize: 20)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('Boton 1'),
                  onPressed: () {},
                ),
                const SizedBox(width: 8),
                TextButton(
                  child: const Text('Boton 2'),
                  onPressed: () {},
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
