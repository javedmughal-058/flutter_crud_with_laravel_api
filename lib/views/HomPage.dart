import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

import 'DashBoard.dart';
import 'FirstPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    PageController page = PageController();
    bool isFinished = false;

    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SideMenu(
                controller: page,
                style: SideMenuStyle(
                  // showTooltip: false,
                  displayMode: SideMenuDisplayMode.auto,
                  hoverColor: Colors.blue[100],
                  selectedColor: Colors.lightBlue,
                  selectedTitleTextStyle: const TextStyle(color: Colors.white),
                  selectedIconColor: Colors.white,
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.all(Radius.circular(10)),
                  // ),
                  // backgroundColor: Colors.blueGrey[700]
                ),
                title: Text('USG'),
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
                footer: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'mohada',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                items: [
                  SideMenuItem(
                    priority: 0,
                    title: 'Dashboard',
                    onTap: () {
                      page.jumpToPage(0);
                    },
                    icon: const Icon(Icons.home),
                    badgeContent: const Text(
                      '3',
                      style: TextStyle(color: Colors.white),
                    ),
                    tooltipContent: "This is a tooltip for Dashboard item",
                  ),
                  SideMenuItem(
                    priority: 1,
                    title: 'Users',
                    onTap: () {
                      page.jumpToPage(1);
                    },
                    icon: const Icon(Icons.supervisor_account),
                  ),
                  SideMenuItem(
                    priority: 2,
                    title: 'Files',
                    onTap: () {
                      page.jumpToPage(2);
                    },
                    icon: const Icon(Icons.file_copy_rounded),
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
                    title: 'Download',
                    onTap: () {
                      page.jumpToPage(3);
                    },
                    icon: const Icon(Icons.download),
                  ),
                  SideMenuItem(
                    priority: 4,
                    title: 'Settings',
                    onTap: () {
                      page.jumpToPage(4);
                    },
                    icon: const Icon(Icons.settings),
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
                  const SideMenuItem(
                    priority: 7,
                    title: 'Exit',
                    icon: Icon(Icons.exit_to_app),
                  ),
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
                    const FirstPage(),
                    // Container(
                    //   color: Colors.white,
                    //   child: const Center(
                    //     child: Text(
                    //       'Users',
                    //       style: TextStyle(fontSize: 35),
                    //     ),
                    //   ),
                    // ),

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
                          'Only Title',
                          style: TextStyle(fontSize: 35),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: const Center(
                        child: Text(
                          'Only Icon',
                          style: TextStyle(fontSize: 35),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: SwipeableButtonView(
                  buttonText: "SLIDE TO UNLOCK",
                  buttonWidget: Container(
                    child: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.grey,
                    ),
                  ),
                  activeColor: Color(0xff3398F6),
                  isFinished: isFinished,
                  onWaitingProcess: () {
                    Future.delayed(Duration(seconds: 1), () {
                      setState(() {
                        isFinished = true;
                      });
                    });
                  },
                  onFinish: () async {
                    await Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade,
                            child: const DashboardScreen()));

                    setState(() {
                      isFinished = false;
                    });
                  })),
        ],
      ),
    );
  }
}
