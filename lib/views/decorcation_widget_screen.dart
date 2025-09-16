import 'package:flutter/material.dart';

class DecorcationWidgetScreen extends StatelessWidget {
  const DecorcationWidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Card(
            elevation: 10,
            shadowColor: Colors.purpleAccent,
            color: Colors.amberAccent,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text("This is card widget"),
                  ElevatedButton(onPressed: () {}, child: Text("Click Me")),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60, right: 60),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                color: Colors.purple,
                child: ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text("Ali Akbar"),
                  subtitle: Text("Hello, how are you?"),
                  trailing: Text(DateTime.now().toString()),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(12),
            height: 70,
            width: 420,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(radius: 25, backgroundColor: Colors.white),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Ali Akbar"),
                        Text("Hello, how are you?"),
                      ],
                    ),
                  ],
                ),
                Text(DateTime.now().toString()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
