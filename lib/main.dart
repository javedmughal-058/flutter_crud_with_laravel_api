import 'package:flutter/material.dart';
import 'package:flutter_crud_with_laravel_api/controllers/UserController.dart';
import 'package:flutter_crud_with_laravel_api/views/MenuPages/AboutUs.dart';
import 'package:flutter_crud_with_laravel_api/views/MenuPages/AppointmentHome.dart';
import 'package:flutter_crud_with_laravel_api/views/MenuPages/Decision.dart';
import 'package:flutter_crud_with_laravel_api/views/MenuPages/ESS.dart';
import 'package:flutter_crud_with_laravel_api/views/MenuPages/Garments.dart';
import 'package:flutter_crud_with_laravel_api/views/MenuPages/Lunch.dart';
import 'package:flutter_crud_with_laravel_api/views/MenuPages/Objective.dart';
import 'package:flutter_crud_with_laravel_api/views/MenuPages/Policy.dart';
import 'package:flutter_crud_with_laravel_api/views/MenuPages/Setting.dart';
import 'package:flutter_crud_with_laravel_api/views/MenuPages/appraisal.dart';
import 'package:flutter_crud_with_laravel_api/views/MenuPages/ctm.dart';
import 'package:flutter_crud_with_laravel_api/views/MenuPages/leave.dart';
import 'package:flutter_crud_with_laravel_api/views/ProfilePage.dart';
import 'package:flutter_crud_with_laravel_api/views/USG_BOT/usg_bot.dart';
import 'package:get/get.dart';
import 'views/StartPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final userController = Get.put(UserController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color(0xff24577a),
        appBarTheme: const AppBarTheme(
          elevation: 0.0,
          backgroundColor: Color(0xff24577a),
        ),
      ),
      home: const StartPage(),
      getPages: [
        GetPage(
            name: "/profile_page", page: () => const ProfilePage(), transition: Transition.leftToRight, transitionDuration: const Duration(milliseconds: 800)),
        GetPage(
            name: "/main", page: () => const MyApp(), transition: Transition.rightToLeft, transitionDuration: const Duration(milliseconds: 800)),
      ],
      routes: {
        "/appointment_home" : (context) => const AppointmentHome(),
        "/dss_notifs" : (context) => const DecisionSupport(),
        "/ess" : (context) => const EmployeeSelfService(),
        "/leave_apply" : (context) => const LeaveApply(),
        "/garment_request" : (context) => const GarmentRequest(),
        "/lunch_request" : (context) => const LunchRequest(),
        "/ctm" : (context) => const CTM(),
        "/appraisal" : (context) => const Appraisal(),
        "/objective" : (context) => const Objective(),
        "/policies" : (context) => const Policy(),
        "/settings" : (context) => const Settings(),
        "/about_us" : (context) => const AboutUS(),
        "/usgbot" : (context) => const USGBot(),
      },
    );
  }
}
