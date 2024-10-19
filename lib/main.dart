import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(const MaterialApp(home: QuateList()));
}

class QuateList extends StatefulWidget {
  const QuateList({super.key});

  @override
  State<QuateList> createState() => _QuateListState();
}

class _QuateListState extends State<QuateList> {
  List<Quote> quotes = [
    Quote(
        text: 'The only way to do great work is to love what you do',
        author: 'Albert Schweitzer'),
    Quote(
        text:
            'Your time is limited, so don\'t waste it living someone else\'s life.',
        author: 'Theodore Roosevelt'),
    Quote(
        text:
            'Success is not the key to happiness. Happiness is the key to success.',
        author: 'Mahatma Gandhi'),
    Quote(
        text:
            'Success is not an accident, it\'s a mindset. You have to believe in yourself when no one else does.',
        author: 'Winston Churchill')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Awesome Quotes',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 6, 146, 159),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: quotes.map((quote) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '${quote.text}   :    ${quote.author}',
              style: const TextStyle(
                fontSize: 18.0,
                color: Color.fromARGB(255, 20, 20, 20),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjalevel = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      appBar: AppBar(
        title: const Text(
          'Ninja ID Card',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 159, 6, 126),
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjalevel += 1;
          });
        },
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 159, 6, 126),
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('syrineninja.png'),
                radius: 60.0,
              ),
            ),
            const Divider(
              height: 90.0,
              color: Color.fromARGB(255, 168, 10, 134),
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey[500],
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Syrinaaa ',
              style: TextStyle(
                color: Color.fromARGB(255, 168, 10, 134),
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                color: Colors.grey[500],
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              '$ninjalevel',
              style: const TextStyle(
                color: Color.fromRGBO(168, 10, 134, 1),
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                const Icon(Icons.email,
                    color: Color.fromARGB(255, 168, 10, 134)),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Syrina@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
