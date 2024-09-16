import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('my first app'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 244, 184, 215),
      ),
      body: Container(
        color: Colors.grey[400],
        padding: EdgeInsets.all(20.0),
        margin: EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
        child: Text('hay , i learn flutter !'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add), // Using an icon is more common for FABs.
        backgroundColor: const Color.fromARGB(255, 244, 184, 215),
      ),
    );
  }
}
