import 'package:flutter/material.dart';
import 'package:flutter_crud_with_laravel_api/controllers/UserController.dart';
import 'package:flutter_crud_with_laravel_api/views/DSS/PO.dart';
import 'package:flutter_crud_with_laravel_api/views/DSS/POC.dart';
import 'package:flutter_crud_with_laravel_api/views/DSS/PR.dart';
import 'package:flutter_crud_with_laravel_api/views/BottomPages/Home.dart';
import 'package:flutter_crud_with_laravel_api/views/MenuPages/AboutUs.dart';
import 'package:flutter_crud_with_laravel_api/views/MenuPages/DecisionSupport.dart';
import 'package:flutter_crud_with_laravel_api/views/MenuPages/Ess.dart';
import 'package:flutter_crud_with_laravel_api/views/MenuPages/login.dart';
import 'package:flutter_crud_with_laravel_api/views/MenuPages/Appointment.dart';
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
      home: const main_page(),
      getPages: [
        GetPage(
            name: "/profile_page", page: () => const ProfilePage(), transition: Transition.leftToRight, transitionDuration: const Duration(milliseconds: 600)),
        GetPage(
            name: "/main", page: () => const MyApp(), transition: Transition.rightToLeft, transitionDuration: const Duration(milliseconds: 600)),
      ],
      routes: {
        "/appointment_home" : (context) => const EmployeeSelfService(),
        "/dss_notifs" : (context) => const DecisionSupport(),
        "/ess" : (context) => const EssHome(),
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
        "/po" : (context) => const PO(),
        "/pr" : (context) => const PR(),
        "/poc" : (context) => const POC(),
      },
    );
  }
}
