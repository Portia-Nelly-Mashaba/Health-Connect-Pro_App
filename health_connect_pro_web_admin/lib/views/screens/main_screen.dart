//import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:health_connect_pro_web_admin/views/screens/side_bar_screens/doctor/doctor_appointment_screen.dart';
import 'package:health_connect_pro_web_admin/views/screens/side_bar_screens/doctor/doctor_category_screen.dart';
import 'package:health_connect_pro_web_admin/views/screens/side_bar_screens/doctor/doctor_medication_screen.dart';
import 'package:health_connect_pro_web_admin/views/screens/side_bar_screens/doctor/doctor_prescription_screen.dart';
import 'package:health_connect_pro_web_admin/views/screens/side_bar_screens/doctor/doctor_screen.dart';
import 'package:health_connect_pro_web_admin/views/screens/side_bar_screens/doctor/doctor_upload_banner.dart';
import 'package:health_connect_pro_web_admin/views/screens/side_bar_screens/doctor/doctor_withdrawal_screen.dart';
import 'package:health_connect_pro_web_admin/views/screens/side_bar_screens/pharmacy/banner_screen.dart';
import 'package:health_connect_pro_web_admin/views/screens/side_bar_screens/pharmacy/category_screen.dart';
import 'package:health_connect_pro_web_admin/views/screens/side_bar_screens/pharmacy/dashboard.dart';
import 'package:health_connect_pro_web_admin/views/screens/side_bar_screens/pharmacy/order_screen.dart';
import 'package:health_connect_pro_web_admin/views/screens/side_bar_screens/pharmacy/product_screen.dart';
import 'package:health_connect_pro_web_admin/views/screens/side_bar_screens/pharmacy/vendor_screen.dart';
import 'package:health_connect_pro_web_admin/views/screens/side_bar_screens/pharmacy/withdrawal_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Widget _selectedItem = DashboardScreen();

  screenSelector(item) {
    switch (item.route) {
      case DashboardScreen.routeName:
        setState(() {
          _selectedItem = DashboardScreen();
        });

        break;

      case VendorScreen.routeName:
        setState(() {
          _selectedItem = VendorScreen();
        });

        break;

      case CategoryScreen.routeName:
        setState(() {
          _selectedItem = CategoryScreen();
        });

        break;

      case ProductScreen.routeName:
        setState(() {
          _selectedItem = ProductScreen();
        });

        break;

      case UploadBannerScreen.routeName:
        setState(() {
          _selectedItem = UploadBannerScreen();
        });

        break;

      case OrderScreen.routeName:
        setState(() {
          _selectedItem = OrderScreen();
        });

        break;

      case WithdrawalScreen.routeName:
        setState(() {
          _selectedItem = WithdrawalScreen();
        });

        break;

      //doctor
      case DoctorScreen.routeName:
        setState(() {
          _selectedItem = DoctorScreen();
        });

        break;

      case DoctorCategoryScreen.routeName:
        setState(() {
          _selectedItem = DoctorCategoryScreen();
        });

        break;

      case DoctorPrescriptionScreen.routeName:
        setState(() {
          _selectedItem = DoctorPrescriptionScreen();
        });

        break;

      case DoctorMedicationScreen.routeName:
        setState(() {
          _selectedItem = DoctorMedicationScreen();
        });

        break;

      case DoctorAppointmentScreen.routeName:
        setState(() {
          _selectedItem = DoctorAppointmentScreen();
        });

        break;

      case DoctorUploadBannerScreen.routeName:
        setState(() {
          _selectedItem = DoctorUploadBannerScreen();
        });

        break;

      case DoctorWithdrawalScreen.routeName:
        setState(() {
          _selectedItem = DoctorWithdrawalScreen();
        });

        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Management'),
        ),
        sideBar: SideBar(
          items: [
            AdminMenuItem(
                title: 'Dashboard',
                icon: Icons.dashboard,
                route: DashboardScreen.routeName),
            AdminMenuItem(
              title: 'Pharmacy',
              icon: Icons.store_sharp,
              children: [
                AdminMenuItem(
                  title: 'Vendors',
                  icon: CupertinoIcons.person_3,
                  route: VendorScreen.routeName,
                ),
                AdminMenuItem(
                  title: 'Categories',
                  icon: Icons.category,
                  route: CategoryScreen.routeName,
                ),
                AdminMenuItem(
                  title: 'Products',
                  icon: Icons.shop,
                  route: ProductScreen.routeName,
                ),
                AdminMenuItem(
                  title: 'Upload Banner',
                  icon: CupertinoIcons.add,
                  route: UploadBannerScreen.routeName,
                ),
                AdminMenuItem(
                  title: 'Orders',
                  icon: CupertinoIcons.shopping_cart,
                  route: OrderScreen.routeName,
                ),
                AdminMenuItem(
                  title: 'Withdrawals',
                  icon: CupertinoIcons.money_dollar,
                  route: WithdrawalScreen.routeName,
                ),
              ],
            ),
            //Doctor
            AdminMenuItem(
              title: 'Doctor',
              icon: CupertinoIcons.person,
              children: [
                AdminMenuItem(
                  title: 'Doctors',
                  icon: CupertinoIcons.person_3,
                  route: DoctorScreen.routeName,
                ),
                AdminMenuItem(
                  title: 'Categories',
                  icon: Icons.category,
                  route: DoctorCategoryScreen.routeName,
                ),
                AdminMenuItem(
                  title: 'Prescription',
                  icon: CupertinoIcons.doc_on_clipboard,
                  route: DoctorPrescriptionScreen.routeName,
                ),
                AdminMenuItem(
                  title: 'Medication',
                  icon: CupertinoIcons.heart,
                  route: DoctorMedicationScreen.routeName,
                ),
                AdminMenuItem(
                  title: 'Appointments',
                  icon: CupertinoIcons.calendar,
                  route: DoctorAppointmentScreen.routeName,
                ),
                AdminMenuItem(
                  title: 'Upload Banner',
                  icon: CupertinoIcons.add,
                  route: DoctorUploadBannerScreen.routeName,
                ),
                AdminMenuItem(
                  title: 'Widrawals',
                  icon: CupertinoIcons.money_dollar,
                  route: DoctorWithdrawalScreen.routeName,
                ),
              ],
            ),

            //clinic
            AdminMenuItem(
              title: 'Clinic',
              children: [
                AdminMenuItem(
                  title: 'Clinic Info',
                  icon: CupertinoIcons.person_3,
                  route: '/',
                ),
                AdminMenuItem(
                  title: 'Appointments',
                  icon: CupertinoIcons.calendar,
                  route: '/',
                ),
                AdminMenuItem(
                  title: 'Upload Banner',
                  icon: CupertinoIcons.add,
                  route: '/',
                ),
              ],
            ),

            //hospital
            AdminMenuItem(
              title: 'Hospital',
              children: [
                AdminMenuItem(
                  title: 'Hospital Info',
                  icon: CupertinoIcons.person_3,
                  route: '/',
                ),
                AdminMenuItem(
                  title: 'Appointments',
                  icon: CupertinoIcons.calendar,
                  route: '/',
                ),
                AdminMenuItem(
                  title: 'Upload Banner',
                  icon: CupertinoIcons.add,
                  route: '/',
                ),
              ],
            ),

            //Ambulance
            AdminMenuItem(
              title: 'Ambulance',
              children: [
                AdminMenuItem(
                  title: 'Ambulance Info',
                  icon: CupertinoIcons.person_3,
                  route: '/',
                ),
                AdminMenuItem(
                  title: 'Booking Records',
                  icon: CupertinoIcons.calendar,
                  route: '/',
                ),
                AdminMenuItem(
                  title: 'Upload Banner',
                  icon: CupertinoIcons.add,
                  route: '/',
                ),
              ],
            ),

            //Wellness
            AdminMenuItem(
              title: 'Wellness',
              children: [
                AdminMenuItem(
                  title: 'Doctor Reminders',
                  icon: Icons.shop,
                  route: '/',
                ),
                AdminMenuItem(
                  title: 'Appointments',
                  icon: CupertinoIcons.calendar,
                  route: '/',
                ),
              ],
            ),
          ],
          selectedRoute: '',
          onSelected: (item) {
            screenSelector(item);
          },
          header: Container(
            height: 50,
            width: double.infinity,
            color: const Color(0xff444444),
            child: const Center(
              child: Text(
                'Health Connect Pro Panel',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          footer: Container(
            height: 50,
            width: double.infinity,
            color: const Color(0xff444444),
            child: const Center(
              child: Text(
                'Copyright 2023 TechTitans',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        body: _selectedItem);
  }
}
