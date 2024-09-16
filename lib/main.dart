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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('hi again !'),
          TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Colors.pink,
              ),
              child: Text('click here')),
          Container(
            color: Colors.amber[100],
            padding: EdgeInsets.all(20.0),
            child: Text('Conatiner Text hh'),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add), // Using an icon is more common for FABs.
        backgroundColor: const Color.fromARGB(255, 244, 184, 215),
      ),
    );
  }
}
