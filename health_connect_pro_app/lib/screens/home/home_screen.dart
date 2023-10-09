//import 'package:doctor/constants.dart';
import 'package:flutter/material.dart';
//import 'package:google_nav_bar/google_nav_bar.dart';

import 'components/available_doctors.dart';
import 'components/categories.dart';
import '../../components/custom_app_bar.dart';
import 'components/recommended_doctors.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(
                text: "Find Your",
                title: "Specialist",
              ),
              RecommendedDoctors(),
              Categories(),
              AvailableDoctors()
            ],
          ),
        ),
      ),
    );
  }
}
