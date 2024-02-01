
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/custom_button.dart';
import '../widget/custom_text_feildEmail.dart';
import '../widget/custom_text_feildPhone.dart';
import 'buttom_navigartion.dart';

class Tasking extends StatelessWidget {
  Tasking({super.key});
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final RegExp phoneRegex = RegExp(r'^[0-9]+$');
  final TextEditingController phoneController = TextEditingController();// Non-nullable
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 80),
                FlutterLogo(size: 100),
                SizedBox(height: 20),
                CustomTextFieldPhone(text: "Phone Number",     validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a phone number';
                  }
                  if (!phoneRegex.hasMatch(value)) {
                    return 'Please enter a valid phone number';
                  }
                  if (value.length != 11) {
                    return 'Phone number must be 11 digits';
                  }
                  return null;
                },
                ),
                SizedBox(height: 5,),
                CustomTextField(
                  text: 'Enter password',
                  keyboardType: TextInputType.visiblePassword,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a password';
                    }
                    if (value.length < 8) {
                      return 'Password must be at least 8 characters long';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                CustomButton(
                  text: "Submit",
                  color: Colors.blue,
                  onPressed: (context) {
                    // Execute validation logic here
                    if (Form.of(context)!.validate()) {
                      // If validation passes, navigate to the next screen
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return ButtonNavigationBars();
                      }));
                    }
                  },
                ),

                SizedBox(height: 10),
                CustomButton(text: "Sign Up", color: Colors.grey), // Simplified text
              ],
            ),
          ),
        ),
      ),
    );
  }
}
