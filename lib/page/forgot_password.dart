import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:user_interface/forgot/button_forgot.dart';
import 'package:user_interface/forgot/covers.dart';
import 'package:user_interface/palatte.dart';
import 'package:user_interface/widget/widgets.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

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
                        'Recover your password',
                        style: kText,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            CoversPage(
                              icon: FontAwesomeIcons.user,
                              hint: 'Username',
                              inputType: TextInputType.emailAddress,
                              inputAction: TextInputAction.next,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: const [
                      SizedBox(
                        height: 350,
                      ),
                      ButtonForgot(
                        buttonText: 'Get it back',
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