// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:makeup/components/my_textfield.dart'; // Corrected import statement
import 'package:makeup/components/mybutton.dart';
import 'package:makeup/components/mySquareTile.dart'; // Changed to lowercase 'my_square_tile'

class LoginPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void signInUser() {
    // Updated function name to follow Dart naming conventions
    // Add your sign-in logic here
  }

  LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Image.asset('images/user.png', width: 100, height: 100),
              const SizedBox(height: 50),
              Text(
                "Welcome back, you have been missed",
                style: TextStyle(
                  color: Colors.blueGrey[300],
                  fontSize: 17,
                ),
              ),
              const SizedBox(height: 20),
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),
              const SizedBox(height: 16),
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Forgot Password',
                      style: TextStyle(
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 28),
              MyButton(
                onTap: signInUser, // Updated function name
              ),
              const SizedBox(height: 50),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10), // Added SizedBox for spacing
                    Text(
                      'Or continue with',
                      style: TextStyle(
                        color: Colors.grey[400],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MySquareTile(
                            imagePath:
                                'images/google.png'), // Changed to lowercase 'my_square_tile'
                      ],
                    ),
                    SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(color: Colors.white70),
                        ),
                        SizedBox(width: 4),
                        Text(
                          "Or register now",
                          style: TextStyle(color: Colors.white70),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  MySquareTile({required String imagePath}) {}
}
