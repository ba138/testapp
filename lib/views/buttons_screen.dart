import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      appBar: AppBar(title: const Text('Buttons')),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
              child: Text(
                ("Elevated Button"),
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(backgroundColor: Colors.amber),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [Icon(Icons.add), Text("Outlined Button")],
              ),
            ),
            const SizedBox(height: 10),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.volume_up, color: Colors.white),
              iconSize: 30,
              style: IconButton.styleFrom(backgroundColor: Colors.amber),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {},
              child: Text("Login", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
