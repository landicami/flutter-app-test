import 'package:flutter/material.dart';
import 'package:friend_advisor/home.dart';

void main() {
  runApp(const MaterialApp(home: Home()));
}

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sandbox'),
          backgroundColor: Colors.grey,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                height: 100, color: Colors.red, child: const Text('Hello')),
            Container(
                height: 200, color: Colors.green, child: const Text('på')),
            Container(
                height: 300, color: Colors.blue, child: const Text('dej')),
          ],
        ));
  }
}

// Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(width: 100, color: Colors.red, child: const Text('one')),
//           Container(width: 200, color: Colors.green, child: const Text('two')),
//           Container(width: 300, color: Colors.blue, child: const Text('three')),
//           Container(width: 400, color: Colors.amber, child: const Text('four')),
//         ],
//       ),