import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app/app.dart';

import 'app/app.dart';
import 'app/provider/counter_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterProvider(), // Crea una instancia de tu modelo
      child: MyApp(),
    ),
  );
}
