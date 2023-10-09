import 'package:doctor/constants.dart';
import 'package:doctor/screens/auth/sign_up_screen.dart';
import 'package:flutter/material.dart';

import 'components/sign_in_form.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sign In",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Text("Don’n have an account?"),
                  TextButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpScreen(),
                      ),
                    ),
                    child: Text("Sign up!"),
                  )
                ],
              ),
              SizedBox(height: defaultPadding * 1.5),
              SignInForm(),
            ],
          ),
        ),
      ),
    );
  }
}
