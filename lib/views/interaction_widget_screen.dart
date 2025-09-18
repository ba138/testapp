import 'package:flutter/material.dart';

class InteractionWidgetScreen extends StatefulWidget {
  const InteractionWidgetScreen({super.key});

  @override
  State<InteractionWidgetScreen> createState() =>
      _InteractionWidgetScreenState();
}

class _InteractionWidgetScreenState extends State<InteractionWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Interaction Widgets"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          InkWell(
            child: Text(
              "Press this to interact",
              style: TextStyle(
                fontSize: 30,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              print("Inkwell tapped");
            },
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              print("Gesture Detector tapped");
            },
            child: Text(
              "Press this to interact",
              style: TextStyle(fontSize: 30),
            ),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              print("this is custom button");
            },
            child: Container(
              height: 60,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.tealAccent,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.black, width: 0.5),
              ),
              child: Center(child: Text("Custom Button")),
            ),
          ),
          GestureDetector(
            onTap: () {
              print("Container tapped");
            },
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
                image: DecorationImage(
                  image: NetworkImage(
                    "data:image/jpeg;base64,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",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print("Avatar tapped");
            },
            child: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                "data:image/jpeg;base64,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",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
