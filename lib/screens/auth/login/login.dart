import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_kit/constants.dart';
import 'package:shop_kit/layout/layout_screen.dart';
import 'package:shop_kit/screens/auth/widgets/custom_textfield.dart';
import 'package:shop_kit/widgets/spacing_height.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    var emailTextEditor = TextEditingController();
    var passwordTextEditor = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SpaceHeight(height: 100),
              Center(
                child: Image.asset(
                  "assets/images/logo.png",
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
              const SpaceHeight(height: 10),
              const Text(
                "Log in",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SpaceHeight(
                height: 30,
              ),
              Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextField(
                      textEditor: emailTextEditor,
                      icon: Icons.email,
                      text: 'Email',
                      obscureText: false,
                    ),
                    const SpaceHeight(
                      height: 30,
                    ),
                    CustomTextField(
                      textEditor: passwordTextEditor,
                      icon: Icons.lock_rounded,
                      text: 'Password',
                      obscureText: true,
                    ),
                    const SpaceHeight(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Forgot password?",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const SpaceHeight(
                      height: 20,
                    ),
                    Center(
                      child: SizedBox(
                        width: 200,
                        height: 56,
                        child: ElevatedButton(
                          onPressed: () {
                            // Validate returns true if the form is valid, or false otherwise.
                            if (formKey.currentState!.validate()) {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const LayoutScreen()));
                            }
                          },
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(primaryColor)),
                          child: const Text(
                            'Log in',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SpaceHeight(height: 30),
              Center(
                child: Image.asset(
                  "assets/images/or.png",
                  width: 200,
                  fit: BoxFit.cover,
                ),
              ),
              const SpaceHeight(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26, // Shadow color
                          blurRadius: 10, // Shadow blur radius
                          offset: Offset(0, 4), // Shadow offset
                        ),
                      ],
                    ),
                    child: Image.asset(
                      "assets/icons/facebook.png",
                      width: 40,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26, // Shadow color
                          blurRadius: 10, // Shadow blur radius
                          offset: Offset(0, 4), // Shadow offset
                        ),
                      ],
                    ),
                    child: Image.asset(
                      "assets/icons/google.png",
                      width: 40,
                    ),
                  ),
                ],
              ),
              const SpaceHeight(height: 30),
              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: ' Don\'t have an account? ',
                      style: TextStyle(fontSize: 16),
                    ),
                    TextSpan(
                      text: 'Sign Up',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
