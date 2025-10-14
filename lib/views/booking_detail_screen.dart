import 'package:firstapp/const/custom_app_bar.dart';
import 'package:firstapp/const/my_Text.dart';
import 'package:flutter/material.dart';

class BookingDetailScreen extends StatelessWidget {
  final Map<String, dynamic> data;
  final String? err;
  const BookingDetailScreen({super.key, required this.data, this.err});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomAppBar(
                ontap: () {
                  Navigator.pop(context);
                },
                title: data['title'],
              ),
            ),
            const SizedBox(height: 10),
            Image.network(data['image']),
            Row(children: [MyText(text: data['accodimation'] + 'guests')]),
          ],
        ),
      ),
    );
  }
}
