import 'package:flutter/material.dart';
import 'package:log_page/screens/signin.dart';
import 'package:log_page/screens/signup.dart';
import 'package:log_page/theme/theme.dart';
import 'package:log_page/widgets/custom_buttons.dart';
import 'package:log_page/widgets/custom_scaffold.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        child: Column(
      children: [
        Flexible(
            flex: 8,
            child: Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 0, horizontal: 40.0),
              child: Center(
                child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(children: [
                      TextSpan(
                          text: 'Welcome Agent!\n',
                          style: TextStyle(
                            fontSize: 45.0,
                            fontWeight: FontWeight.w600,
                          )),
                      TextSpan(
                          text: '\nYour daddy Riot at the service',
                          style: TextStyle(
                            fontSize: 20,
                          )),
                    ])),
              ),
            )),
        Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                  const Expanded(
                      child: WelcomeButton(
                    buttonText: 'Sign in',
                    onTap: SignInScreen(),
                    color: Colors.transparent,
                    textColor: Colors.white,
                  )),
                  Expanded(
                      child: WelcomeButton(
                    buttonText: 'Sign up',
                    onTap: const SignUpScreen(),
                    color: Colors.white,
                    textColor: lightColorScheme.primary,
                  )),
                ],
              ),
            )),
      ],
    ));
  }
}
