import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:user_interface/page/create_account.dart';
import 'package:user_interface/page/forgot_password.dart';
import 'package:user_interface/page/password_input.dart';
import 'package:user_interface/page/rounded_button.dart';
import 'package:user_interface/page/text_input.dart';
import 'package:user_interface/palatte.dart';
import 'package:user_interface/widget/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  const SizedBox(
                    height: 150,
                    child: Center(
                      child: Text(
                        'Master Bank',
                        style:kHeading,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const TextInput(
                              icon: FontAwesomeIcons.solidEnvelope,
                              hint: 'Email',
                              inputType: TextInputType.emailAddress,
                              inputAction: TextInputAction.next,
                            ),
                            const PasswordInput(
                              icon: FontAwesomeIcons.lock,
                              hint: 'Password',
                              inputAction: TextInputAction.done,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(
                                    builder: (context) => const ForgotPassword()
                                  ),
                                );
                              },
                              child: const Text(
                                'Forgot Password?',
                                style: kBodyText,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            const SizedBox(
                              height: 100,
                            ),
                            const RoundedButton(
                              buttonText: 'Login',
                            ),
                            const SizedBox(
                              height: 80,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(
                                    builder: (context) => const CreateAccountPage()
                                  ),
                                );
                              },
                              child: Container(
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.white,
                                      width: 1
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  'Create an account',
                                  style: kBodyText,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
