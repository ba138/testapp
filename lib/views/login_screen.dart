import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var emailcontroller = TextEditingController();
    var passwordController = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: TextField(
                controller: emailcontroller,
                decoration: InputDecoration(
                  // border: InputBorder.none,
                  hintText: "Enter your email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                  label: Text("Email"),
                  filled: true,
                  fillColor: Colors.grey.withValues(alpha: 0.2),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(color: Colors.red, width: 1),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: TextField(
                keyboardType: TextInputType.visiblePassword,
                controller: passwordController,
                decoration: InputDecoration(
                  // border: InputBorder.none,
                  hintText: "Enter your password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                  label: Text("Password"),
                  filled: true,
                  fillColor: Colors.grey.withValues(alpha: 0.2),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(color: Colors.red, width: 1),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text("Forget Password?"),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  debugPrint("this is email ${emailcontroller.text}");
                  debugPrint("this is password ${passwordController.text}");
                },
                child: (Text("Login")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
