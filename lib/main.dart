import 'package:flutter/material.dart';
import 'package:galaxy_palnents_app/views/Home_Page.dart';

import 'views/Detail_Page.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => HomePage(),
      'DiscPage': (context) => DiscPage(),
    },
  ));
}
