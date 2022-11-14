import 'package:flutter/material.dart';

class MenuModel{
  final String title;
  final IconData icon;
  final String route;
  final Color color;
  bool fav;
  int count;
  bool? isSub;
  bool isPressed;

  MenuModel({required this.title,required this.icon,required this.route,required this.color, required this.fav, required this.count, this.isSub, required this.isPressed});

}

final menuList = [
   MenuModel(title: 'Appointment', icon: Icons.list_alt, route: '/appointment_home',color: const Color(0xff7367f0), fav: false, count: 0, isPressed: false),
   MenuModel(title: 'DSS', icon: Icons.approval, route: '/dss_notifs',color: const Color(0xff28c76f), fav: false,count: 1, isPressed: false),
   MenuModel(title: 'ESS', icon: Icons.time_to_leave, route: '/ess',color: const Color(0xFDA60000), fav: false,count: 2, isPressed: false),
   MenuModel(title: 'Leave', icon: Icons.time_to_leave, route: '/leave_apply',color: const Color(0xffFFA556), fav: false,count: 3, isPressed: false),
   MenuModel(title: 'Garment', icon: Icons.shopping_cart_outlined, route: '/garment_request',color: const Color(0xff00cfe8), fav: false,count: 4, isPressed: false),
   MenuModel(title: 'Lunch', icon: Icons.lunch_dining, route: '/lunch_request',color: const Color(0xff74A1DF), fav: false,count: 5, isPressed: false),
   MenuModel(title: 'CTM', icon: Icons.airplanemode_active_outlined, route: '/ctm',color: const Color(0xffF87CAD), fav: false,count: 6, isPressed: false),
   MenuModel(title: 'Appraisals', icon: Icons.list, route: '/appraisal',color: const Color(0xff86CAEA), fav: false,count: 7, isPressed: false),
   MenuModel(title: 'Objectives', icon: Icons.description, route: '/objective',color: const Color(0xffC1C2F6), fav: false,count: 8, isPressed: false),
   MenuModel(title: 'Policies', icon: Icons.policy, route: '/policies',color: const Color(0xff74A1DF), fav: false,count: 9, isPressed: false),
   MenuModel(title: 'Settings', icon: Icons.settings, route: '/settings',color: const Color(0xff7367f0), fav: false,count: 10, isPressed: false),
   MenuModel(title: 'About US', icon: Icons.info, route: '/about_us',color: const Color(0xff28c76f), fav: false,count: 11, isPressed: false),
];

final essMenu = [
  MenuModel(count:0, title: 'My Work Desk', icon: Icons.list_alt, route: '/appointment_home',color: const Color(0xff7367f0), fav: false, isSub:false, isPressed: false),
  MenuModel(count:1,title: 'Task Planner', icon: Icons.approval, route: '/dss_notifs',color: const Color(0xff28c76f), fav: false, isSub:false, isPressed: false),
  MenuModel(count:2,title: 'Service Request', icon: Icons.time_to_leave, route: '/ess',color: const Color(0xFDA60000), fav: false, isSub:false, isPressed: false),
  MenuModel(count:3,title: 'Vehicle Requisition', icon: Icons.task, route: '/ess',color: const Color(0xFDA60000), fav: false, isSub:false, isPressed: false),
  MenuModel(count:4, title: 'Training Calender', icon: Icons.list_alt, route: '/appointment_home',color: const Color(0xff7367f0), fav: false, isSub:true, isPressed: false),
  MenuModel(count:5,title: 'Mess', icon: Icons.approval, route: '/dss_notifs',color: const Color(0xff28c76f), fav: false, isSub: true, isPressed: false),
  MenuModel(count:6,title: 'Performance Management', icon: Icons.time_to_leave, route: '/ess',color: const Color(0xFDA60000), fav: false, isSub:false, isPressed: false),
  MenuModel(count:7,title: 'ESS', icon: Icons.task, route: '/ess',color: const Color(0xFDA60000), fav: false, isSub:false, isPressed: false),
  MenuModel(count:8, title: 'Car Polling', icon: Icons.list_alt, route: '/appointment_home',color: const Color(0xff7367f0), fav: false, isSub:false, isPressed: false),
  MenuModel(count:9,title: 'Sustainability', icon: Icons.approval, route: '/dss_notifs',color: const Color(0xff28c76f), fav: false, isSub:false, isPressed: false),
  MenuModel(count:10,title: 'One HR Policies', icon: Icons.time_to_leave, route: '/ess',color: const Color(0xFDA60000), fav: false, isSub:false, isPressed: false),
  MenuModel(count:11,title: 'Garment Request', icon: Icons.task, route: '/ess',color: const Color(0xFDA60000), fav: false, isSub:false, isPressed: false),
  MenuModel(count:12, title: 'Q Connect', icon: Icons.list_alt, route: '/appointment_home',color: const Color(0xff7367f0), fav: false, isSub:false, isPressed: false),
  MenuModel(count:13,title: 'Sustainability Report', icon: Icons.approval, route: '/dss_notifs',color: const Color(0xff28c76f), fav: false, isSub:false, isPressed: false),


];

final dssMenu = [
  MenuModel(count:14, title: 'PO', icon: Icons.shopping_cart_outlined, route: '/po',color: const Color(0xff7367f0), fav: false, isPressed: false),
  MenuModel(count:15,title: 'PR', icon: Icons.request_quote_outlined, route: '/pr',color: const Color(0xff28c76f), fav: false, isPressed: false),
  MenuModel(count:16,title: 'POC', icon: Icons.point_of_sale_outlined, route: '/poc',color: const Color(0xFDA60000), fav: false, isPressed: false),
  MenuModel(count:17,title: 'Peojects', icon: Icons.description_outlined, route: '/pr',color: const Color(0xff28c76f), fav: false, isPressed: false),
  MenuModel(count:18,title: 'Stock Movement', icon: Icons.category_outlined, route: '/poc',color: const Color(0xFDA60000), fav: false, isPressed: false),
  MenuModel(count:19,title: 'Gate Pass', icon: Icons.map_outlined, route: '/pr',color: const Color(0xff28c76f), fav: false, isPressed: false),
  MenuModel(count:20,title: 'CTM', icon: Icons.airplanemode_on_outlined, route: '/poc',color: const Color(0xFDA60000), fav: false, isPressed: false),

];

final messMenu = [
  MenuModel(count:21, title: 'Lunch Request', icon: Icons.request_page_outlined, route: '/appointment_home',color: const Color(0xff7367f0), fav: false, isPressed: false),
  MenuModel(count:22,title: 'Mess Menu', icon: Icons.menu_book_sharp, route: '/dss_notifs',color: const Color(0xff28c76f), fav: false, isPressed: false),
  MenuModel(count:23,title: 'Online Mess Subscription form', icon: Icons.book_online, route: '/ess',color: const Color(0xFDA60000), fav: false, isPressed: false),

];