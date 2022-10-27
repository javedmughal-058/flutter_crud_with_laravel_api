import 'package:flutter/material.dart';

class MenuModel{
  final String title;
  final IconData icon;
  final String route;
  final Color color;
  const MenuModel({required this.title,required this.icon,required this.route,required this.color});

}

final menuList = [
  const MenuModel(title: 'Appointment', icon: Icons.list_alt, route: '/appointment_home',color: Color(0xff7367f0)),
  const MenuModel(title: 'DSS', icon: Icons.approval, route: '/dss_notifs',color: Color(0xff28c76f)),
  const MenuModel(title: 'ESS', icon: Icons.time_to_leave, route: '/ess',color: Color(0xFDA60000)),
  const MenuModel(title: 'Leave', icon: Icons.time_to_leave, route: '/leave_apply',color: Color(0xffFFA556)),
  const MenuModel(title: 'Garment', icon: Icons.shopping_cart_outlined, route: '/garment_request',color: Color(0xff00cfe8)),
  const MenuModel(title: 'Lunch', icon: Icons.lunch_dining, route: '/lunch_request',color: Color(0xff74A1DF)),
  // MenuModel(title: 'CTM', icon: Icons.airplanemode_active_outlined, route: '/ctm',color: Color(0xffF87CAD)),
  // MenuModel(title: 'Appraisals', icon: Icons.list, route: '/appraisal',color: Color(0xff86CAEA)),
  // const MenuModel(title: 'Objectives', icon: Icons.description, route: '/objective',color: Color(0xffC1C2F6)),
  // const MenuModel(title: 'Policies', icon: Icons.policy, route: '/policies',color: const Color(0xff74A1DF)),
  const MenuModel(title: 'Settings', icon: Icons.settings, route: '/settings',color: const Color(0xff7367f0)),
  const MenuModel(title: 'About US', icon: Icons.info, route: '/about_us',color: const Color(0xff28c76f)),
];