import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            debugPrint("Menu button is clicked");
          },
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
        title: Text("Splash Screen"),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.amberAccent,
                border: Border.all(color: Colors.black, width: 0.5),
              ),
              child: Center(child: Text("This is container")),
            ),
            Text(
              "This is Splash Screen",
              style: TextStyle(
                fontSize: 18,
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.amberAccent,
                border: Border.all(color: Colors.black, width: 0.5),
              ),
              child: Center(child: Text("This is container")),
            ),
            Text(
              "This is Splash Screen",
              style: TextStyle(
                fontSize: 18,
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      // Center(
      //   child: Container(
      //     height: 200,
      //     width: 200,
      //     decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(8),
      //       color: Colors.amberAccent,
      //       border: Border.all(color: Colors.black, width: 0.5),
      //     ),
      //     child: Center(child: Text("This is container")),
      //   ),
      // ),

      // Center(
      //   child: Text(
      //     "This is Splash Screen",
      //     style: TextStyle(
      //       fontSize: 18,
      //       color: Colors.blueGrey,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      // ),
    );
  }
}
