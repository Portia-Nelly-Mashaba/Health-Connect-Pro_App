//import 'package:doctor/screens/home/home_screen.dart';
import 'package:doctor/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../constants.dart';

class SignInForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            validator: MultiValidator(
              [
                RequiredValidator(errorText: requiredField),
                EmailValidator(errorText: emailError),
              ],
            ),
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) {},
            decoration: InputDecoration(labelText: "Email*"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
              validator: passwordValidator,
              obscureText: true,
              onSaved: (newValue) {},
              decoration: InputDecoration(labelText: "Password*"),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text("Forgot your Password?"),
          ),
          SizedBox(height: defaultPadding),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MainScreen(),
                    ),
                  );
                }
              },
              child: Text("Sign In"),
            ),
          ),
        ],
      ),
    );
  }
}
