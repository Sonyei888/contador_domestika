
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/counter_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplicación de Contador'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Contador:',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                '${counterProvider.counter}',
                style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: counterProvider.decrementar,
                child: const Icon(Icons.remove),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: counterProvider.incrementar,
                child: const Icon(Icons.add),
              ),
            ],
          ),
          const Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Yeison Calderón - Sonyei888',
                textAlign: TextAlign.right,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
