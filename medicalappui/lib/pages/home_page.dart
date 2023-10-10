import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:medicalappui/pages/Caterory_Widgets/Category_doctor_card.dart';
import 'package:medicalappui/pages/Caterory_Widgets/ambulance_card.dart';
import 'package:medicalappui/pages/Caterory_Widgets/chatbot_card.dart';
import 'package:medicalappui/pages/Caterory_Widgets/clinic_hospital_card.dart';
import 'package:medicalappui/pages/Caterory_Widgets/pharmacy_card.dart';
import 'package:medicalappui/pages/Caterory_Widgets/prescription_card.dart';
import 'package:medicalappui/pages/Caterory_Widgets/wellness_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: const BoxDecoration(
              color: Colors.lightBlueAccent,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 52,
                      width: 52,
                      //color: Colors.black,
                      //decoration: BoxDecoration(
                      //color: Color(0xFFF2BEA1),
                      //shape: BoxShape.circle,
                      //),
                      child: const Icon(CupertinoIcons.bell),
                    ),
                  ),
                  const Text(
                    'James, What Are You\n Looking For 👁️?',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Search',
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: SvgPicture.asset(
                              'assets/icons/search.svg',
                              width: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        //Doctor
                        CategoryDoctorCard(),
                        //Diagnisis
                        DiagnosisCategoryCard(),
                        //Prescription
                        PrescriptionCategoryCard(),
                        //Clini and Hospital
                        ClinicHospitalCategoryCard(),
                        PharmacyCategoryCard(),
                        AmbulanceCategoryCard(),
                        WellnessCategoryCard(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
