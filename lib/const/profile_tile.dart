import 'package:firstapp/const/my_Text.dart';
import 'package:flutter/material.dart';

class ProfileTile extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback ontap;
  const ProfileTile({
    super.key,
    required this.iconData,
    required this.title,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: InkWell(
        onTap: ontap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(iconData),
                const SizedBox(width: 8),
                MyText(text: title),
              ],
            ),
            Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}
