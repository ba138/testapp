import 'package:firstapp/Controllers/card_data_controller.dart';
import 'package:firstapp/const/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardForum extends StatelessWidget {
  const CardForum({super.key});

  @override
  Widget build(BuildContext context) {
    var cardDataController = Get.put(CardDataController());
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Obx(
              () => Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey),
                  image: DecorationImage(
                    image: cardDataController.selectedImage.value != null
                        ? FileImage(cardDataController.selectedImage.value!)
                        : NetworkImage(
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Placeholder_view_vector.svg/330px-Placeholder_view_vector.svg.png",
                          ),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Center(
                  child: IconButton(
                    onPressed: () {
                      cardDataController.pickImage();
                    },
                    icon: Icon(Icons.camera, size: 40),
                  ),
                ),
              ),
            ),
            PrimaryButton(
              buttontext: "Upload",
              onTap: () {
                cardDataController.uploadToFirestore();
              },
            ),
          ],
        ),
      ),
    );
  }
}
