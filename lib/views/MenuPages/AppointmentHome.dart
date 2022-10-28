import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud_with_laravel_api/views/FirstPage.dart';
import 'package:flutter_crud_with_laravel_api/views/OptionalScreen.dart';


class AppointmentHome extends StatefulWidget {
  const AppointmentHome({Key? key}) : super(key: key);

  @override
  State<AppointmentHome> createState() => _AppointmentHomeState();
}

class _AppointmentHomeState extends State<AppointmentHome> {
  PageController page = PageController();
  bool isFinished = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('USG Smart Office', style: TextStyle(fontSize: 18),),),
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              SideMenu(
                controller: page,
                style: SideMenuStyle(
                  itemOuterPadding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                  iconSize: 18,
                  itemHeight: 35.0,
                  // showTooltip: false,
                  displayMode: SideMenuDisplayMode.auto,
                  //unselectedIconColor: Theme.of(context).primaryColor,
                  selectedColor: Theme.of(context).primaryColor,
                  selectedTitleTextStyle: const TextStyle(color: Colors.white),
                  selectedIconColor: Colors.white,
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.all(Radius.circular(10)),
                  // ),
                  // backgroundColor: Colors.blueGrey[700]
                ),
                // title: Text('USG'),
                // title: Column(
                //   children: [
                //     ConstrainedBox(
                //       constraints: const BoxConstraints(
                //         maxHeight: 150,
                //         maxWidth: 150,
                //       ),
                //       child: Image.asset(
                //         'assets/images/easy_sidemenu.png',
                //       ),
                //     ),
                //     const Divider(
                //       indent: 8.0,
                //       endIndent: 8.0,
                //     ),
                //   ],
                // ),
                // footer: const Padding(
                //   padding: EdgeInsets.all(8.0),
                //   child: Text(
                //     'mohada',
                //     style: TextStyle(fontSize: 15),
                //   ),
                // ),
                items: [
                  SideMenuItem(
                    priority: 0,
                    onTap: () {
                      page.jumpToPage(0);
                    },
                    icon: const Icon(Icons.home),
                    badgeContent: const Text(
                      '3',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SideMenuItem(
                    priority: 1,

                    onTap: () {
                      page.jumpToPage(1);
                    },
                    icon: const Icon(Icons.approval),
                  ),
                  SideMenuItem(
                    priority: 2,

                    onTap: () {
                      page.jumpToPage(2);
                    },
                    icon: const Icon(Icons.time_to_leave),
                    trailing: Container(
                        decoration: const BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.all(Radius.circular(6))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6.0, vertical: 3),
                          child: Text(
                            'New',
                            style: TextStyle(fontSize: 11, color: Colors.grey[800]),
                          ),
                        )),
                  ),
                  SideMenuItem(
                    priority: 3,

                    onTap: () {
                      page.jumpToPage(3);
                    },
                    icon: const Icon(Icons.lunch_dining),
                  ),
                  SideMenuItem(
                    priority: 4,

                    onTap: () {
                      page.jumpToPage(4);
                    },
                    icon: const Icon(Icons.airplanemode_active_outlined),
                  ),

                  SideMenuItem(
                    priority: 5,

                    onTap: () {
                      page.jumpToPage(5);
                    },
                    icon: const Icon(Icons.list),
                  ),
                  SideMenuItem(
                    priority: 6,

                    onTap: () {
                      page.jumpToPage(6);
                    },
                    icon: const Icon(Icons.description),
                    trailing: Container(
                        decoration: const BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.all(Radius.circular(6))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6.0, vertical: 3),
                          child: Text(
                            'New',
                            style: TextStyle(fontSize: 11, color: Colors.grey[800]),
                          ),
                        )),
                  ),
                  SideMenuItem(
                    priority: 7,

                    onTap: () {
                      page.jumpToPage(7);
                    },
                    icon: const Icon(Icons.policy),
                  ),
                  SideMenuItem(
                    priority: 8,

                    onTap: () {
                      page.jumpToPage(8);
                    },
                    icon: const Icon(Icons.settings),
                  ),
                  SideMenuItem(
                    priority: 9,

                    onTap: () {
                      page.jumpToPage(9);
                    },
                    icon: const Icon(Icons.info),
                  ),
                  // SideMenuItem(
                  //   priority: 5,
                  //   onTap: () {
                  //     page.jumpToPage(5);
                  //   },
                  //   icon: const Icon(Icons.image_rounded),
                  // ),
                  // SideMenuItem(
                  //   priority: 6,
                  //   title: 'Only Title',
                  //   onTap: () {
                  //     page.jumpToPage(6);
                  //   },
                  // ),
                  // const SideMenuItem(
                  //   priority: 7,
                  //   title: 'Exit',
                  //   icon: Icon(Icons.exit_to_app),
                  // ),
                ],
              ),
              Expanded(
                child: PageView(
                  controller: page,
                  children: [
                    Container(
                      color: Colors.white,
                      child: const Center(
                        child: Text(
                          'Dashboard',
                          style: TextStyle(fontSize: 35),
                        ),
                      ),
                    ),
                    const OptionalScreen(),
                    const FirstPage(),
                    // Container(
                    //   color: Colors.white,
                    //   child: const Center(
                    //     child: Text(
                    //       'Files',
                    //       style: TextStyle(fontSize: 35),
                    //     ),
                    //   ),
                    // ),
                    Container(
                      color: Colors.white,
                      child: const Center(
                        child: Text(
                          'Download',
                          style: TextStyle(fontSize: 35),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: const Center(
                        child: Text(
                          'Settings',
                          style: TextStyle(fontSize: 35),
                        ),
                      ),
                    ),

                    Container(
                      color: Colors.white,
                      child: const Center(
                        child: Text(
                          'Files',
                          style: TextStyle(fontSize: 35),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: const Center(
                        child: Text(
                          'Download',
                          style: TextStyle(fontSize: 35),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: const Center(
                        child: Text(
                          'Settings',
                          style: TextStyle(fontSize: 35),
                        ),
                      ),
                    ),

                    Container(
                      color: Colors.white,
                      child: const Center(
                        child: Text(
                          'Files',
                          style: TextStyle(fontSize: 35),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: const Center(
                        child: Text(
                          'Download',
                          style: TextStyle(fontSize: 35),
                        ),
                      ),
                    ),
                 

                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
