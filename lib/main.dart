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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [Text('texy1'), Text('Text2')],
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.purple[300],
            child: Text(' i learn more about flutter column0'),
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            color: const Color.fromARGB(255, 224, 153, 237),
            child: Text(' i learn more about flutter column1'),
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            color: const Color.fromARGB(255, 239, 209, 245),
            child: Text(' i learn more about flutter column2'),
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
