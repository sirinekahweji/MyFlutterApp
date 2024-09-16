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
      body: Center(
          child: ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(Icons.mail),
        label: Text('mail me'),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.amber, // Set button background color
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add), // Using an icon is more common for FABs.
        backgroundColor: const Color.fromARGB(255, 244, 184, 215),
      ),
    );
  }
}
