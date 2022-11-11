import 'package:flutter/material.dart';

class MenuModel{
  final String title;
  final IconData icon;
  final String route;
  final Color color;
  bool fav;
  int count;

  MenuModel({required this.title,required this.icon,required this.route,required this.color, required this.fav, required this.count});

}

final menuList = [
   MenuModel(title: 'Appointment', icon: Icons.list_alt, route: '/appointment_home',color: const Color(0xff7367f0), fav: false, count: 0),
   MenuModel(title: 'DSS', icon: Icons.approval, route: '/dss_notifs',color: const Color(0xff28c76f), fav: false,count: 1),
   MenuModel(title: 'ESS', icon: Icons.time_to_leave, route: '/ess',color: const Color(0xFDA60000), fav: false,count: 2),
   MenuModel(title: 'Leave', icon: Icons.time_to_leave, route: '/leave_apply',color: const Color(0xffFFA556), fav: false,count: 3),
   MenuModel(title: 'Garment', icon: Icons.shopping_cart_outlined, route: '/garment_request',color: const Color(0xff00cfe8), fav: false,count: 4),
   MenuModel(title: 'Lunch', icon: Icons.lunch_dining, route: '/lunch_request',color: const Color(0xff74A1DF), fav: false,count: 5),
   MenuModel(title: 'CTM', icon: Icons.airplanemode_active_outlined, route: '/ctm',color: const Color(0xffF87CAD), fav: false,count: 6),
   MenuModel(title: 'Appraisals', icon: Icons.list, route: '/appraisal',color: const Color(0xff86CAEA), fav: false,count: 7),
   MenuModel(title: 'Objectives', icon: Icons.description, route: '/objective',color: const Color(0xffC1C2F6), fav: false,count: 8),
   MenuModel(title: 'Policies', icon: Icons.policy, route: '/policies',color: const Color(0xff74A1DF), fav: false,count: 9),
   MenuModel(title: 'Settings', icon: Icons.settings, route: '/settings',color: const Color(0xff7367f0), fav: false,count: 10),
   MenuModel(title: 'About US', icon: Icons.info, route: '/about_us',color: const Color(0xff28c76f), fav: false,count: 11),
];

final essMenu = [
  MenuModel(count:0, title: 'My Work Desk', icon: Icons.list_alt, route: '/appointment_home',color: const Color(0xff7367f0), fav: false),
  MenuModel(count:1,title: 'Task Planner', icon: Icons.approval, route: '/dss_notifs',color: const Color(0xff28c76f), fav: true),
  MenuModel(count:2,title: 'Service Request', icon: Icons.time_to_leave, route: '/ess',color: const Color(0xFDA60000), fav: false),
  MenuModel(count:3,title: 'Vehicle Requisition', icon: Icons.task, route: '/ess',color: const Color(0xFDA60000), fav: false),
  MenuModel(count:0, title: 'Training Calender', icon: Icons.list_alt, route: '/appointment_home',color: const Color(0xff7367f0), fav: false),
  MenuModel(count:1,title: 'Mess', icon: Icons.approval, route: '/dss_notifs',color: const Color(0xff28c76f), fav: false),
  MenuModel(count:2,title: 'Performance Management', icon: Icons.time_to_leave, route: '/ess',color: const Color(0xFDA60000), fav: false),
  MenuModel(count:3,title: 'ESS', icon: Icons.task, route: '/ess',color: const Color(0xFDA60000), fav: false),
  MenuModel(count:0, title: 'Car Polling', icon: Icons.list_alt, route: '/appointment_home',color: const Color(0xff7367f0), fav: false),
  MenuModel(count:1,title: 'Sustainability', icon: Icons.approval, route: '/dss_notifs',color: const Color(0xff28c76f), fav: false),
  MenuModel(count:2,title: 'One HR Policies', icon: Icons.time_to_leave, route: '/ess',color: const Color(0xFDA60000), fav: false),
  MenuModel(count:3,title: 'Garment Request', icon: Icons.task, route: '/ess',color: const Color(0xFDA60000), fav: false),
  MenuModel(count:0, title: 'Q Connect', icon: Icons.list_alt, route: '/appointment_home',color: const Color(0xff7367f0), fav: false),
  MenuModel(count:1,title: 'Sustainability Report', icon: Icons.approval, route: '/dss_notifs',color: const Color(0xff28c76f), fav: false),


];

final dssMenu = [
  MenuModel(count:4, title: 'PO', icon: Icons.shopping_cart_outlined, route: '/po',color: const Color(0xff7367f0), fav: false),
  MenuModel(count:5,title: 'PR', icon: Icons.request_quote_outlined, route: '/pr',color: const Color(0xff28c76f), fav: false,),
  MenuModel(count:6,title: 'POC', icon: Icons.point_of_sale_outlined, route: '/poc',color: const Color(0xFDA60000), fav: false),
  MenuModel(count:7,title: 'Peojects', icon: Icons.description_outlined, route: '/pr',color: const Color(0xff28c76f), fav: false),
  MenuModel(count:8,title: 'Stock Movement', icon: Icons.category_outlined, route: '/poc',color: const Color(0xFDA60000), fav: false),
  MenuModel(count:9,title: 'Gate Pass', icon: Icons.map_outlined, route: '/pr',color: const Color(0xff28c76f), fav: false),
  MenuModel(count:10,title: 'CTM', icon: Icons.airplanemode_on_outlined, route: '/poc',color: const Color(0xFDA60000), fav: false),

];

final messMenu = [
  MenuModel(count:0, title: 'Lunch Request', icon: Icons.request_page_outlined, route: '/appointment_home',color: const Color(0xff7367f0), fav: false),
  MenuModel(count:1,title: 'Mess Menu', icon: Icons.menu_book_sharp, route: '/dss_notifs',color: const Color(0xff28c76f), fav: false),
  MenuModel(count:2,title: 'Online Mess Subscription form', icon: Icons.book_online, route: '/ess',color: const Color(0xFDA60000), fav: false),

];