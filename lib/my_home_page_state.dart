import 'package:flutter/material.dart';
import 'utils/prime_utils.dart';
import 'utils/color_utils.dart';
import 'utils/image_utils.dart';
import 'my_home_page.dart';

class MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final List<int> _fruits = [];

  void _incrementCounter() {
    setState(() {
      _counter++;
      _fruits.add(_counter);
    });
  }

  void _showDialog(int fruit) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('$fruit : ${getNumberType(fruit)}'),
          backgroundColor: getBackgroundColor(fruit),
          content: Image.asset(
            getImageAsset(fruit),
            width: 100,
            height: 100,
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  _fruits.remove(fruit);
                });
                Navigator.of(context).pop();
              },
              child: const Text('Supprimer'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Fermer'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$_counter : ${getNumberType(_counter)}'),
      ),
      body: ListView.builder(
        itemCount: _fruits.length,
        itemBuilder: (context, index) {
          final fruit = _fruits[index];
          return ListTile(
            tileColor: getBackgroundColor(fruit),
            title: Text(
              '$fruit',
              style: const TextStyle(color: Colors.white),
            ),
            leading: Image.asset(
              getImageAsset(fruit),
              width: 40,
              height: 40,
            ),
            onTap: () => _showDialog(fruit),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        backgroundColor: _counter == 0
            ? Colors.orange
            : (_counter % 2 == 0 ? Colors.indigo : Colors.cyan),
        child: const Icon(Icons.add),
      ),
    );
  }
}
