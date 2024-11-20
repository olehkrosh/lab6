import 'package:flutter/material.dart';
import 'package:lab6/widgets/logo_flutter.dart';
import 'package:lab6/widgets/text_field.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Logo
              logo_flutter(width: 200),
              const SizedBox(height: 20),

              //Title
              const Text('Reset password', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              const SizedBox(height: 40),

              //Email
              text_field(label: 'Email'),
              const SizedBox(height: 20),

              //Reset button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => {
                    showDialog(
                      context: context,
                      builder: (BuildContext ctx) {
                        return const AlertDialog(
                          title: Text('Message'),
                          content: Text("Need to implement"),
                        );
                      },
                    )
                  },
                  style: const ButtonStyle(
                      padding: WidgetStatePropertyAll<EdgeInsets>(
                          EdgeInsets.symmetric(vertical: 24))),
                  child: const Text('Reset'),
                ),
              ),
              const SizedBox(height: 10),

              //Back button
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () => {
                    Navigator.pop(context)
                  },
                  style: const ButtonStyle(
                      padding: WidgetStatePropertyAll<EdgeInsets>(
                          EdgeInsets.symmetric(vertical: 24))),
                  child: const Text('Back'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}