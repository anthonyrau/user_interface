import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:user_interface/create/button.dart';
import 'package:user_interface/create/confirm_password.dart';
import 'package:user_interface/create/last_name_page.dart';
import 'package:user_interface/create/name_page.dart';
import 'package:user_interface/page/password_input.dart';
import 'package:user_interface/page/text_input.dart';
import 'package:user_interface/palatte.dart';
import 'package:user_interface/widget/widgets.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({Key? key}) : super(key: key);

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
                        'Create Account',
                        style: kText,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            NamePage(
                              icon: FontAwesomeIcons.user,
                              hint: 'First Name',
                              inputType: TextInputType.emailAddress,
                              inputAction: TextInputAction.next,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            LastNamePage(
                              icon: FontAwesomeIcons.user,
                              hint: 'Last Name',
                              inputType: TextInputType.emailAddress,
                              inputAction: TextInputAction.next,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextInput(
                              icon: FontAwesomeIcons.solidEnvelope,
                              hint: 'Email',
                              inputType: TextInputType.emailAddress,
                              inputAction: TextInputAction.next,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            PasswordInput(
                              icon: FontAwesomeIcons.lock,
                              hint: 'Password',
                              inputAction: TextInputAction.done,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ConfirmPasswordPage(
                              icon: FontAwesomeIcons.lock,
                              hint: 'Confirm Password',
                              inputAction: TextInputAction.done,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: const [
                      SizedBox(
                        height: 90,
                      ),
                      Button(
                        buttonText: 'Check in',
                      ),
                    ],
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