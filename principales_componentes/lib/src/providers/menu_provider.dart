import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> opt = [];
  _MenuProvider() {
    cargarData();
  }

  Future<List<dynamic>> cargarData() async {
    final request = await rootBundle.loadString('data/menu_opts.json');
    Map dataMap = json.decode(request);
    opt = dataMap['rutas'];
    return opt;
  }
}

final menuProvider = _MenuProvider();
