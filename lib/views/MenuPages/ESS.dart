import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud_with_laravel_api/controllers/UserController.dart';
import 'package:flutter_crud_with_laravel_api/models/MenuModel.dart';
import 'package:flutter_crud_with_laravel_api/views/FirstPage.dart';
import 'package:flutter_crud_with_laravel_api/views/OptionalScreen.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class EssHome extends StatefulWidget {
  const EssHome({Key? key}) : super(key: key);

  @override
  State<EssHome> createState() => _EssHomeState();
}

class _EssHomeState extends State<EssHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ESS'),
      ),
      body: const SecondPage(),
    );
  }
}

class NavigationPage extends StatelessWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageController page = PageController();
    bool isFinished = false;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'USG Smart Office',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SideMenu(
                controller: page,
                style: SideMenuStyle(
                  itemOuterPadding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
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
                            style: TextStyle(
                                fontSize: 11, color: Colors.grey[800]),
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
                            style: TextStyle(
                                fontSize: 11, color: Colors.grey[800]),
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

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  final Tween<double> _scaleTween = Tween<double>(begin: 0, end: 10);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 14, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final UserController _userController = Get.find();

    final size = MediaQuery.of(context).size;
    Color _colorTheme = Theme.of(context).primaryColor;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: const [
            Expanded(
              child: _CustomBalanceCard(
                  icon: Icons.cloud_outlined,
                  entitled: '10',
                  availed: '4.5',
                  leaveName: 'Casual'),
            ),
            Expanded(
              child: _CustomBalanceCard(
                  icon: Icons.drive_eta_outlined,
                  entitled: '30',
                  availed: '8',
                  leaveName: 'Annual'),
            ),
            Expanded(
              child: _CustomBalanceCard(
                  icon: Icons.sick_outlined,
                  entitled: '8',
                  availed: '2',
                  leaveName: 'Sick'),
            ),
          ],
        ),
        // const SizedBox(
        //   height: 10,
        // ),
        // const Padding(
        //   padding: EdgeInsets.fromLTRB(16, 8, 0, 0),
        //   child: Text('Employee Self Service',
        //       style: TextStyle(
        //           fontSize: 18,
        //           fontWeight: FontWeight.w500,
        //           color: Colors.black)),
        // ),

        // Container(
        //   padding: const EdgeInsets.all(8),
        //   margin: const EdgeInsets.fromLTRB(12, 4, 12, 5),
        //   decoration: BoxDecoration(
        //     // border: Border.all(color: Theme.of(context).primaryColor),
        //     color: Theme.of(context).primaryColor,
        //     borderRadius: BorderRadius.circular(4),
        //   ),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //     children: [
        //       Column(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           CircularPercentIndicator(
        //             radius: 18.0,
        //             lineWidth: 2.0,
        //             percent: 0.80,
        //             center: const Text("80%"),
        //             progressColor: Colors.green,
        //           ),
        //           const SizedBox(height: 5,),
        //           const Text('Casual', style: TextStyle(color: Colors.white),),
        //         ],
        //       ),
        //       Column(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           CircularPercentIndicator(
        //             radius: 18.0,
        //             lineWidth: 2.0,
        //             percent: 0.40,
        //             center: const Text("40%"),
        //             progressColor: Colors.amber,
        //           ),
        //           const SizedBox(height: 5,),
        //           const Text('Annual', style: TextStyle(color: Colors.white),),
        //         ],
        //       ),
        //       Column(
        //         children: [
        //           CircularPercentIndicator(
        //             radius: 18.0,
        //             lineWidth: 2.0,
        //             percent: 0.25,
        //             center: const Text("25%"),
        //             progressColor: Colors.red,
        //           ),
        //           const SizedBox(height: 5,),
        //           const Text('Sick', style: TextStyle(color: Colors.white),),
        //         ],
        //       ),
        //     ],
        //   ),
        // ),
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 4, 0, 0),
          child: Text('Attendance Summary',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black)),
        ),
        Container(
          padding: const EdgeInsets.all(4),
          margin: const EdgeInsets.fromLTRB(12, 2, 12, 0),
          decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).primaryColor),
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(1),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: const Offset(0, 2), // changes position of shadow
                ),
              ]),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: const [
                  Text('Late in Minutes'),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    '84',
                    style: TextStyle(color: Colors.red),
                  ),
                  Spacer(),
                  Text('Early out Minutes'),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    '0',
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: const [
                  Text('Late Out Minutes'),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    '407',
                    style: TextStyle(color: Colors.green),
                  ),
                  Spacer(),
                  Text('Early in Minutes'),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    '48',
                    style: TextStyle(color: Colors.green),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  // height: 55,
                  decoration: BoxDecoration(
                    // color: Colors.grey[300],
                    border: Border.all(color: Colors.transparent),
                    // borderRadius: BorderRadius.circular(25.0)
                  ),
                  child: TabBar(
                    controller: tabController,
                    isScrollable: true,
                    // padding: const EdgeInsets.all(4),
                    indicatorColor: Theme.of(context).primaryColor,
                    indicator: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(5.0)),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.grey,
                    onTap: (index) {
                      _userController.EssTabIndex.value = index;
                    },
                    tabs: [
                      const Tab(
                        text: 'My Work Desk',
                        // icon: Icon(
                        //   Icons.email,
                        //   size: 18, color: Theme.of(context).primaryColor
                        // )
                      ),
                      const Tab(
                        text: 'Task Planner',
                        // icon: Icon(
                        //   Icons.email,
                        //   size: 18, color: Theme.of(context).primaryColor
                        // )
                      ),
                      const Tab(
                        text: 'Service Request',
                        // icon: Icon(
                        //   Icons.email,
                        //   size: 18, color: Theme.of(context).primaryColor
                        // )
                      ),
                      const Tab(
                        text: 'Vehicle Requisition',
                        // icon: Icon(
                        //   Icons.email,
                        //   size: 18, color: Theme.of(context).primaryColor
                        // )
                      ),
                      const Tab(
                        text: 'Training Calender',
                        // icon: Icon(
                        //   Icons.email,
                        //   size: 18, color: Theme.of(context).primaryColor
                        // )
                      ),
                      Tab(
                        child: Row(
                          children: const [
                            Text('Mess'),
                            Icon(Icons.keyboard_arrow_down,
                                size: 18, color: Colors.white),
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          children: const [
                            Text('Performance Management'),
                            Icon(Icons.keyboard_arrow_down,
                                size: 18, color: Colors.white)
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          children: const [
                            Text('ESS'),
                            Icon(Icons.keyboard_arrow_down,
                                size: 18, color: Colors.white)
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          children: const [
                            Text('Car Polling'),
                            Icon(Icons.keyboard_arrow_down,
                                size: 18, color: Colors.white)
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          children: const [
                            Text('Sustainability'),
                            Icon(Icons.keyboard_arrow_down,
                                size: 18, color: Colors.white)
                          ],
                        ),
                      ),
                      const Tab(
                        text: 'One HR Policies',
                        // icon: Icon(
                        //   Icons.email,
                        //   size: 18, color: Theme.of(context).primaryColor
                        // )
                      ),
                      const Tab(
                        text: 'Garment Request',
                        // icon: Icon(
                        //   Icons.email,
                        //   size: 18, color: Theme.of(context).primaryColor
                        // )
                      ),
                      const Tab(
                        text: 'Q Connect',
                        // icon: Icon(
                        //   Icons.email,
                        //   size: 18, color: Theme.of(context).primaryColor
                        // )
                      ),
                      Tab(
                        child: Row(
                          children: const [
                            Text('Sustainability Report'),
                            Icon(Icons.keyboard_arrow_down,
                                size: 18, color: Colors.white)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: TabBarView(
                  controller: tabController,
                      children: [
                        const Center(
                          child: Text("1"),
                        ),
                        const Center(
                          child: Text("2"),
                        ),
                        const Center(
                          child: Text("3"),
                        ),
                        const Center(
                          child: Text("Vehicle Requisition"),
                        ),
                        const Center(
                          child: Text("Training Calender"),
                        ),
                          SizedBox(
                            height: Get.height,
                            child: ListView.builder(
                                itemCount: messMenu.length,
                                itemBuilder: (context, index) {
                                  final _menu = messMenu[index];
                                  return GestureDetector(
                                    onLongPress: () {
                                      _menu.fav = !_menu.fav;
                                      _userController.addedFav.value = _menu.fav;
                                      print("long pressed");
                                      if (_userController.favorites
                                          .contains(_menu.count)) {
                                        _userController.removeFavorite(_menu);
                                      } else {
                                        _userController.addFavorite(_menu);
                                      }
                                    },
                                    child: ListTile(
                                      dense: true,
                                      contentPadding: const EdgeInsets.symmetric(
                                          horizontal: 4.0, vertical: 5.0),
                                      visualDensity: const VisualDensity(
                                          horizontal: 0, vertical: -4),
                                      leading: Icon(_menu.icon, color: _colorTheme),
                                      title: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(_menu.title,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle2),
                                          Obx(()=>_userController.favorites.contains(_menu.count) ? const Icon(Icons.favorite, size: 14, color: Colors.red) : const SizedBox(),),
                                        ],
                                      ),
                                      onTap: () {
                                        print("clicked");
                                      },
                                      trailing: Icon(Icons.arrow_forward_ios, size: 18, color: Theme.of(context).primaryColor.withOpacity(0.7),
                                      ),
                                    ),
                                  );
                                }),
                          ),
                        // SingleChildScrollView(
                        //   padding: const EdgeInsets.fromLTRB(16, 4, 8, 4),
                        //   child: Column(
                        //     children: [
                        //       // Padding(
                        //       //   padding: const EdgeInsets.all(8.0),
                        //       //   child: GestureDetector(
                        //       //     onTap: (){},
                        //       //     onLongPress: (){},
                        //       //     child: Row(
                        //       //       children: [
                        //       //         Icon(Icons.request_page_outlined,color: _colorTheme),
                        //       //         const SizedBox(width: 5,),
                        //       //         Text('Lunch Request',style: Theme.of(context).textTheme.subtitle2),
                        //       //         const Spacer(),
                        //       //         Icon(Icons.arrow_forward_ios,size:18,color: Theme.of(context).primaryColor.withOpacity(0.7),),
                        //       //       ],
                        //       //     ),
                        //       //   ),
                        //       // ),
                        //       // Padding(
                        //       //   padding: const EdgeInsets.all(8.0),
                        //       //   child: GestureDetector(
                        //       //     onTap: (){},
                        //       //     onLongPress: (){},
                        //       //     child: Row(
                        //       //       children: [
                        //       //         Icon(Icons.menu_book_sharp,color: _colorTheme),
                        //       //         const SizedBox(width: 5,),
                        //       //         Text('Mess Menu',style: Theme.of(context).textTheme.subtitle2),
                        //       //         const Spacer(),
                        //       //         Icon(Icons.arrow_forward_ios,size:18,color: Theme.of(context).primaryColor.withOpacity(0.7),),
                        //       //       ],
                        //       //     ),
                        //       //   ),
                        //       // ),
                        //       // Padding(
                        //       //   padding: const EdgeInsets.all(8.0),
                        //       //   child: GestureDetector(
                        //       //     onTap: (){},
                        //       //     onLongPress: (){},
                        //       //     child: Row(
                        //       //       children: [
                        //       //         Icon(Icons.book_online,color: _colorTheme),
                        //       //         const SizedBox(width: 5,),
                        //       //         Text('Online Mess Subscription form',style: Theme.of(context).textTheme.subtitle2),
                        //       //         const Spacer(),
                        //       //         Icon(Icons.arrow_forward_ios,size:18,color: Theme.of(context).primaryColor.withOpacity(0.7),),
                        //       //       ],
                        //       //     ),
                        //       //   ),
                        //       // ),
                        //       SizedBox(
                        //         height: 400,
                        //         child: ListView.builder(
                        //             itemCount: messMenu.length,
                        //             itemBuilder: (context, index) {
                        //               final _menu = messMenu[index];
                        //           return GestureDetector(
                        //             onLongPress: () {
                        //               _menu.fav = !_menu.fav;
                        //               print("long pressed");
                        //               if (_userController.favorites.contains(_menu.count)) {
                        //                 _userController.removeFavorite(_menu);
                        //               } else {
                        //                 _userController.addFavorite(_menu);
                        //               }
                        //             },
                        //             child: ListTile(
                        //               dense: true,
                        //               contentPadding: const EdgeInsets.symmetric(
                        //                   horizontal: 4.0, vertical: 5.0),
                        //               visualDensity: const VisualDensity(
                        //                   horizontal: 0, vertical: -4),
                        //               leading: Icon(_menu.icon,
                        //                   color: _colorTheme),
                        //               title: Row(
                        //                 mainAxisAlignment:
                        //                     MainAxisAlignment.spaceBetween,
                        //                 children: [
                        //                   Text(_menu.title,
                        //                       style: Theme.of(context)
                        //                           .textTheme
                        //                           .subtitle2),
                        //                   Obx(() => _menu.fav ? const Icon(Icons.favorite, size: 14, color: Colors.red)
                        //                       : const SizedBox()),
                        //                 ],
                        //               ),
                        //               onTap: () {
                        //                 print("clicked");
                        //               },
                        //               trailing: Obx(
                        //                 () => Icon(
                        //                   _userController.lunchTab.value
                        //                       ? Icons.keyboard_arrow_down
                        //                       : Icons.arrow_forward_ios,
                        //                   size: 18,
                        //                   color: Theme.of(context)
                        //                       .primaryColor
                        //                       .withOpacity(0.7),
                        //                 ),
                        //               ),
                        //             ),
                        //           );
                        //         }),
                        //       ),
                        //
                        //       // GestureDetector(
                        //       //   onLongPress: () {
                        //       //     _userController.addedFav.value =
                        //       //         !_userController.addedFav.value;
                        //       //     print("Long clicked");
                        //       //     if (_userController.addedFav.value) {
                        //       //       _userController.addNewFavorite(
                        //       //         Icons.request_page_outlined,
                        //       //         'Lunch Request',
                        //       //       );
                        //       //     } else {
                        //       //       _userController.removeNewFavorite(
                        //       //         Icons.request_page_outlined,
                        //       //         'Lunch Request',
                        //       //       );
                        //       //     }
                        //       //   },
                        //       //   child: ListTile(
                        //       //     dense: true,
                        //       //     contentPadding: const EdgeInsets.symmetric(
                        //       //         horizontal: 12.0, vertical: 5.0),
                        //       //     visualDensity: const VisualDensity(
                        //       //         horizontal: 0, vertical: -4),
                        //       //     leading: Icon(Icons.request_page_outlined,
                        //       //         color: _colorTheme),
                        //       //     title: Row(
                        //       //       mainAxisAlignment:
                        //       //           MainAxisAlignment.spaceBetween,
                        //       //       children: [
                        //       //         Text('Lunch Request',
                        //       //             style: Theme.of(context)
                        //       //                 .textTheme
                        //       //                 .subtitle2),
                        //       //         Obx(() => _userController.addedFav.value
                        //       //             ? Icon(Icons.favorite,
                        //       //                 size: 14, color: Colors.red)
                        //       //             : const SizedBox()),
                        //       //       ],
                        //       //     ),
                        //       //     onTap: () {
                        //       //       print("clicked");
                        //       //     },
                        //       //     trailing: Obx(
                        //       //       () => Icon(
                        //       //         _userController.lunchTab.value
                        //       //             ? Icons.keyboard_arrow_down
                        //       //             : Icons.arrow_forward_ios,
                        //       //         size: 18,
                        //       //         color: Theme.of(context)
                        //       //             .primaryColor
                        //       //             .withOpacity(0.7),
                        //       //       ),
                        //       //     ),
                        //       //   ),
                        //       // ),
                        //       // Obx(()=> _userController.lunchTab.value ?
                        //       //     TweenAnimationBuilder(
                        //       //       tween: _scaleTween,
                        //       //       duration: const Duration(seconds: 1),
                        //       //       builder: (context, scale, child) {
                        //       //         return Transform.scale(scale: 1, child: child);
                        //       //       },
                        //       //       child: SingleChildScrollView(
                        //       //         padding: const EdgeInsets.fromLTRB(24, 4, 0, 8),
                        //       //         child: Column(
                        //       //           children: [
                        //       //             ListTile(
                        //       //               dense: true,
                        //       //               contentPadding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
                        //       //               visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                        //       //               leading: Icon(Icons.score,color: _colorTheme),
                        //       //               title: Text('1',style: Theme.of(context).textTheme.subtitle2),
                        //       //               onTap: (){
                        //       //                 // Navigator.of(context).pushNamed("/home");
                        //       //               },
                        //       //               trailing: Icon(Icons.arrow_forward_ios,size:18,color: Theme.of(context).primaryColor.withOpacity(0.7),),
                        //       //             ),
                        //       //             ListTile(
                        //       //               dense: true,
                        //       //               contentPadding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
                        //       //               visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                        //       //               leading: Icon(Icons.group_off,color: _colorTheme),
                        //       //               title: Text('2',style: Theme.of(context).textTheme.subtitle2),
                        //       //               onTap: (){
                        //       //                 // Navigator.of(context).pushNamed("/home");
                        //       //               },
                        //       //               trailing: Icon(Icons.arrow_forward_ios,size:18,color: Theme.of(context).primaryColor.withOpacity(0.7),),
                        //       //             ),
                        //       //             ListTile(
                        //       //               dense: true,
                        //       //               contentPadding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
                        //       //               visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                        //       //               leading: Icon(Icons.policy_outlined,color: _colorTheme),
                        //       //               title: Text('3',style: Theme.of(context).textTheme.subtitle2),
                        //       //               onTap: (){
                        //       //                 // Navigator.of(context).pushNamed("/home");
                        //       //               },
                        //       //               trailing: Icon(Icons.arrow_forward_ios,size:18,color: Theme.of(context).primaryColor.withOpacity(0.7),),
                        //       //             ),
                        //       //           ],
                        //       //         ),
                        //       //       ),
                        //       //     ):
                        //       //     const SizedBox()),
                        //       // GestureDetector(
                        //       //   onLongPress: () {
                        //       //     _userController.addedFav.value =
                        //       //         !_userController.addedFav.value;
                        //       //     print("Long clicked");
                        //       //     if (_userController.addedFav.value) {
                        //       //       _userController.addNewFavorite(
                        //       //         Icons.request_page_outlined,
                        //       //         'Lunch Request',
                        //       //       );
                        //       //     } else {
                        //       //       _userController.removeNewFavorite(
                        //       //         Icons.request_page_outlined,
                        //       //         'Lunch Request',
                        //       //       );
                        //       //     }
                        //       //   },
                        //       //   child: ListTile(
                        //       //     dense: true,
                        //       //     contentPadding: const EdgeInsets.symmetric(
                        //       //         horizontal: 12.0, vertical: 5.0),
                        //       //     visualDensity: const VisualDensity(
                        //       //         horizontal: 0, vertical: -4),
                        //       //     leading: Icon(Icons.menu_book_sharp,
                        //       //         color: _colorTheme),
                        //       //     title: Text('Mess Menu',
                        //       //         style: Theme.of(context).textTheme.subtitle2),
                        //       //     onTap: () {
                        //       //       // Navigator.of(context).pushNamed("/home");
                        //       //     },
                        //       //     trailing: Icon(
                        //       //       Icons.arrow_forward_ios,
                        //       //       size: 18,
                        //       //       color: Theme.of(context)
                        //       //           .primaryColor
                        //       //           .withOpacity(0.7),
                        //       //     ),
                        //       //   ),
                        //       // ),
                        //       // GestureDetector(
                        //       //   child: ListTile(
                        //       //     dense: true,
                        //       //     contentPadding: const EdgeInsets.symmetric(
                        //       //         horizontal: 12.0, vertical: 5.0),
                        //       //     visualDensity: const VisualDensity(
                        //       //         horizontal: 0, vertical: -4),
                        //       //     leading:
                        //       //         Icon(Icons.book_online, color: _colorTheme),
                        //       //     title: Text('Online Mess Subscription form',
                        //       //         style: Theme.of(context).textTheme.subtitle2),
                        //       //     onTap: () {
                        //       //       // Navigator.of(context).pushNamed("/home");
                        //       //     },
                        //       //     trailing: Icon(
                        //       //       Icons.arrow_forward_ios,
                        //       //       size: 18,
                        //       //       color: Theme.of(context)
                        //       //           .primaryColor
                        //       //           .withOpacity(0.7),
                        //       //     ),
                        //       //   ),
                        //       // ),
                        //     ],
                        //   ),
                        // ),
                        // DefaultTabController(
                        //   length: 3,
                        //   child: Padding(
                        //     padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                        //     child: Column(
                        //       crossAxisAlignment: CrossAxisAlignment.start,
                        //       children: [
                        //         Container(
                        //           // margin: const EdgeInsets.fromLTRB(0, 10, 0, 5),
                        //           width: size.width,
                        //           // height: 30,
                        //           decoration: BoxDecoration(
                        //             // color: Colors.grey[300],
                        //             border: Border.all(color: Colors.transparent),
                        //             // borderRadius: BorderRadius.circular(25.0)
                        //           ),
                        //           child: TabBar(
                        //             isScrollable: true,
                        //             indicatorColor: Theme.of(context).primaryColor,
                        //             labelColor: Theme.of(context).primaryColor,
                        //             labelStyle: const TextStyle(fontSize: 12.0),
                        //             unselectedLabelColor: Colors.grey,
                        //             unselectedLabelStyle: const TextStyle(fontSize: 11.0),
                        //             tabs: const  [
                        //               Tab(text: 'Lunch Request',),
                        //               Tab(text: 'Mess Menu',),
                        //               Tab(text: 'Online Mess Subscription form',),
                        //             ],
                        //           ),
                        //         ),
                        //         const SizedBox(height: 5.0,),
                        //         const Expanded(
                        //           child: TabBarView(
                        //
                        //             children: [
                        //               Center(child: Text('Lunch Request',)),
                        //               Center(child: Text('Mess Menu')),
                        //               Center(child: Text('Online Mess Subscription form')),
                        //             ],
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        SingleChildScrollView(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              ListTile(
                                dense: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 12.0, vertical: 5.0),
                                visualDensity: const VisualDensity(
                                    horizontal: 0, vertical: -4),
                                leading: Icon(Icons.auto_awesome_motion_outlined,
                                    color: _colorTheme),
                                title: Text('My Objectives',
                                    style: Theme.of(context).textTheme.subtitle2),
                                onTap: () {
                                  // _userController.updateValue();
                                },
                                trailing: Obx(
                                  () => Icon(
                                    _userController.lunchTab.value
                                        ? Icons.keyboard_arrow_down
                                        : Icons.arrow_forward_ios,
                                    size: 18,
                                    color: Theme.of(context)
                                        .primaryColor
                                        .withOpacity(0.7),
                                  ),
                                ),
                              ),

                              // Obx(()=> _userController.lunchTab.value ?
                              //     TweenAnimationBuilder(
                              //       tween: _scaleTween,
                              //       duration: const Duration(seconds: 1),
                              //       builder: (context, scale, child) {
                              //         return Transform.scale(scale: 1, child: child);
                              //       },
                              //       child: SingleChildScrollView(
                              //         padding: const EdgeInsets.fromLTRB(24, 4, 0, 8),
                              //         child: Column(
                              //           children: [
                              //             ListTile(
                              //               dense: true,
                              //               contentPadding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
                              //               visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                              //               leading: Icon(Icons.score,color: _colorTheme),
                              //               title: Text('1',style: Theme.of(context).textTheme.subtitle2),
                              //               onTap: (){
                              //                 // Navigator.of(context).pushNamed("/home");
                              //               },
                              //               trailing: Icon(Icons.arrow_forward_ios,size:18,color: Theme.of(context).primaryColor.withOpacity(0.7),),
                              //             ),
                              //             ListTile(
                              //               dense: true,
                              //               contentPadding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
                              //               visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                              //               leading: Icon(Icons.group_off,color: _colorTheme),
                              //               title: Text('2',style: Theme.of(context).textTheme.subtitle2),
                              //               onTap: (){
                              //                 // Navigator.of(context).pushNamed("/home");
                              //               },
                              //               trailing: Icon(Icons.arrow_forward_ios,size:18,color: Theme.of(context).primaryColor.withOpacity(0.7),),
                              //             ),
                              //             ListTile(
                              //               dense: true,
                              //               contentPadding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
                              //               visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                              //               leading: Icon(Icons.policy_outlined,color: _colorTheme),
                              //               title: Text('3',style: Theme.of(context).textTheme.subtitle2),
                              //               onTap: (){
                              //                 // Navigator.of(context).pushNamed("/home");
                              //               },
                              //               trailing: Icon(Icons.arrow_forward_ios,size:18,color: Theme.of(context).primaryColor.withOpacity(0.7),),
                              //             ),
                              //           ],
                              //         ),
                              //       ),
                              //     ):
                              //     const SizedBox()),
                              ListTile(
                                dense: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 12.0, vertical: 5.0),
                                visualDensity: const VisualDensity(
                                    horizontal: 0, vertical: -4),
                                leading:
                                    Icon(Icons.menu_book_sharp, color: _colorTheme),
                                title: Text('My Appraisals',
                                    style: Theme.of(context).textTheme.subtitle2),
                                onTap: () {
                                  // Navigator.of(context).pushNamed("/home");
                                },
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 18,
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.7),
                                ),
                              ),
                              ListTile(
                                dense: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 12.0, vertical: 5.0),
                                visualDensity: const VisualDensity(
                                    horizontal: 0, vertical: -4),
                                leading: Icon(Icons.group, color: _colorTheme),
                                title: Text('Team Objectives',
                                    style: Theme.of(context).textTheme.subtitle2),
                                onTap: () {
                                  // Navigator.of(context).pushNamed("/home");
                                },
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 18,
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.7),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              ListTile(
                                dense: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 12.0, vertical: 5.0),
                                visualDensity: const VisualDensity(
                                    horizontal: 0, vertical: -4),
                                leading: Icon(Icons.contactless_rounded,
                                    color: _colorTheme),
                                title: Text('Attendance Correction',
                                    style: Theme.of(context).textTheme.subtitle2),
                                onTap: () {
                                  // Navigator.of(context).pushNamed("/home");
                                },
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 18,
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.7),
                                ),
                              ),
                              ListTile(
                                dense: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 12.0, vertical: 5.0),
                                visualDensity: const VisualDensity(
                                    horizontal: 0, vertical: -4),
                                leading:
                                    Icon(Icons.menu_book_sharp, color: _colorTheme),
                                title: Text('Department Attendance',
                                    style: Theme.of(context).textTheme.subtitle2),
                                onTap: () {
                                  // Navigator.of(context).pushNamed("/home");
                                },
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 18,
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.7),
                                ),
                              ),
                              ListTile(
                                dense: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 12.0, vertical: 5.0),
                                visualDensity: const VisualDensity(
                                    horizontal: 0, vertical: -4),
                                leading:
                                    Icon(Icons.time_to_leave, color: _colorTheme),
                                title: Text('Leave Application',
                                    style: Theme.of(context).textTheme.subtitle2),
                                onTap: () {
                                  // Navigator.of(context).pushNamed("/home");
                                },
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 18,
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.7),
                                ),
                              ),
                              ListTile(
                                dense: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 12.0, vertical: 5.0),
                                visualDensity: const VisualDensity(
                                    horizontal: 0, vertical: -4),
                                leading: Icon(Icons.change_circle_outlined,
                                    color: _colorTheme),
                                title: Text('Roster Change Request',
                                    style: Theme.of(context).textTheme.subtitle2),
                                onTap: () {
                                  // Navigator.of(context).pushNamed("/home");
                                },
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 18,
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.7),
                                ),
                              ),
                              ListTile(
                                dense: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 12.0, vertical: 5.0),
                                visualDensity: const VisualDensity(
                                    horizontal: 0, vertical: -4),
                                leading:
                                    Icon(Icons.track_changes, color: _colorTheme),
                                title: Text('Roster Change Request Multiple',
                                    style: Theme.of(context).textTheme.subtitle2),
                                onTap: () {
                                  // Navigator.of(context).pushNamed("/home");
                                },
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 18,
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.7),
                                ),
                              ),
                              ListTile(
                                dense: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 12.0, vertical: 5.0),
                                visualDensity: const VisualDensity(
                                    horizontal: 0, vertical: -4),
                                leading: Icon(Icons.pending, color: _colorTheme),
                                title: Text('Pending Roster Request Report',
                                    style: Theme.of(context).textTheme.subtitle2),
                                onTap: () {
                                  // Navigator.of(context).pushNamed("/home");
                                },
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 18,
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.7),
                                ),
                              ),
                              ListTile(
                                dense: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 12.0, vertical: 5.0),
                                visualDensity: const VisualDensity(
                                    horizontal: 0, vertical: -4),
                                leading: Icon(Icons.approval_outlined,
                                    color: _colorTheme),
                                title: Text('Roster Request Approval for HOD',
                                    style: Theme.of(context).textTheme.subtitle2),
                                onTap: () {
                                  // Navigator.of(context).pushNamed("/home");
                                },
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 18,
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.7),
                                ),
                              ),
                              ListTile(
                                dense: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 12.0, vertical: 5.0),
                                visualDensity: const VisualDensity(
                                    horizontal: 0, vertical: -4),
                                leading:
                                    Icon(Icons.report_outlined, color: _colorTheme),
                                title: Text('Absent Report',
                                    style: Theme.of(context).textTheme.subtitle2),
                                onTap: () {
                                  // Navigator.of(context).pushNamed("/home");
                                },
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 18,
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.7),
                                ),
                              ),
                              ListTile(
                                dense: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 12.0, vertical: 5.0),
                                visualDensity: const VisualDensity(
                                    horizontal: 0, vertical: -4),
                                leading:
                                    Icon(Icons.report_outlined, color: _colorTheme),
                                title: Text('Late IN / Early Out Report',
                                    style: Theme.of(context).textTheme.subtitle2),
                                onTap: () {
                                  // Navigator.of(context).pushNamed("/home");
                                },
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 18,
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.7),
                                ),
                              ),
                              ListTile(
                                dense: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 12.0, vertical: 5.0),
                                visualDensity: const VisualDensity(
                                    horizontal: 0, vertical: -4),
                                leading:
                                    Icon(Icons.report_outlined, color: _colorTheme),
                                title: Text('Early IN / Late Out Report',
                                    style: Theme.of(context).textTheme.subtitle2),
                                onTap: () {
                                  // Navigator.of(context).pushNamed("/home");
                                },
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 18,
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.7),
                                ),
                              ),
                              ListTile(
                                dense: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 12.0, vertical: 5.0),
                                visualDensity: const VisualDensity(
                                    horizontal: 0, vertical: -4),
                                leading: Icon(Icons.details_outlined,
                                    color: _colorTheme),
                                title: Text('Leave Status',
                                    style: Theme.of(context).textTheme.subtitle2),
                                onTap: () {
                                  // Navigator.of(context).pushNamed("/home");
                                },
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 18,
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.7),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // DefaultTabController(
                        //   length: 5,
                        //   child: Padding(
                        //     padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                        //     child: Column(
                        //       crossAxisAlignment: CrossAxisAlignment.start,
                        //       children: [
                        //         Container(
                        //           // margin: const EdgeInsets.fromLTRB(0, 10, 0, 5),
                        //           width: size.width,
                        //           // height: 30,
                        //           decoration: BoxDecoration(
                        //             // color: Colors.grey[300],
                        //             border: Border.all(color: Colors.transparent),
                        //             // borderRadius: BorderRadius.circular(25.0)
                        //           ),
                        //           child: TabBar(
                        //             isScrollable: true,
                        //             indicatorColor: Theme.of(context).primaryColor,
                        //             labelColor: Theme.of(context).primaryColor,
                        //             labelStyle: const TextStyle(fontSize: 12.0),
                        //             unselectedLabelColor: Colors.grey,
                        //             unselectedLabelStyle: const TextStyle(fontSize: 11.0),
                        //             tabs: const  [
                        //               Tab(text: 'Attendance Correction',),
                        //               Tab(text: 'Department Attendance',),
                        //               Tab(text: 'Leave Application',),
                        //               Tab(text: 'Absent Report',),
                        //               Tab(text: 'Leave Status',),
                        //             ],
                        //           ),
                        //         ),
                        //         const SizedBox(height: 5.0,),
                        //         const Expanded(
                        //           child: TabBarView(
                        //
                        //             children: [
                        //               Center(child: Text('1',)),
                        //               Center(child: Text('2')),
                        //               Center(child: Text('3')),
                        //               Center(child: Text('4')),
                        //               Center(child: Text('5')),
                        //             ],
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        SingleChildScrollView(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              ListTile(
                                dense: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 12.0, vertical: 5.0),
                                visualDensity: const VisualDensity(
                                    horizontal: 0, vertical: -4),
                                leading: Icon(Icons.dashboard, color: _colorTheme),
                                title: Text('Dashboard',
                                    style: Theme.of(context).textTheme.subtitle2),
                                onTap: () {
                                  // _userController.updateValue();
                                },
                                trailing: Obx(
                                  () => Icon(
                                    _userController.lunchTab.value
                                        ? Icons.keyboard_arrow_down
                                        : Icons.arrow_forward_ios,
                                    size: 18,
                                    color: Theme.of(context)
                                        .primaryColor
                                        .withOpacity(0.7),
                                  ),
                                ),
                              ),

                              // Obx(()=> _userController.lunchTab.value ?
                              //     TweenAnimationBuilder(
                              //       tween: _scaleTween,
                              //       duration: const Duration(seconds: 1),
                              //       builder: (context, scale, child) {
                              //         return Transform.scale(scale: 1, child: child);
                              //       },
                              //       child: SingleChildScrollView(
                              //         padding: const EdgeInsets.fromLTRB(24, 4, 0, 8),
                              //         child: Column(
                              //           children: [
                              //             ListTile(
                              //               dense: true,
                              //               contentPadding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
                              //               visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                              //               leading: Icon(Icons.score,color: _colorTheme),
                              //               title: Text('1',style: Theme.of(context).textTheme.subtitle2),
                              //               onTap: (){
                              //                 // Navigator.of(context).pushNamed("/home");
                              //               },
                              //               trailing: Icon(Icons.arrow_forward_ios,size:18,color: Theme.of(context).primaryColor.withOpacity(0.7),),
                              //             ),
                              //             ListTile(
                              //               dense: true,
                              //               contentPadding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
                              //               visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                              //               leading: Icon(Icons.group_off,color: _colorTheme),
                              //               title: Text('2',style: Theme.of(context).textTheme.subtitle2),
                              //               onTap: (){
                              //                 // Navigator.of(context).pushNamed("/home");
                              //               },
                              //               trailing: Icon(Icons.arrow_forward_ios,size:18,color: Theme.of(context).primaryColor.withOpacity(0.7),),
                              //             ),
                              //             ListTile(
                              //               dense: true,
                              //               contentPadding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
                              //               visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                              //               leading: Icon(Icons.policy_outlined,color: _colorTheme),
                              //               title: Text('3',style: Theme.of(context).textTheme.subtitle2),
                              //               onTap: (){
                              //                 // Navigator.of(context).pushNamed("/home");
                              //               },
                              //               trailing: Icon(Icons.arrow_forward_ios,size:18,color: Theme.of(context).primaryColor.withOpacity(0.7),),
                              //             ),
                              //           ],
                              //         ),
                              //       ),
                              //     ):
                              //     const SizedBox()),
                              ListTile(
                                dense: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 12.0, vertical: 5.0),
                                visualDensity: const VisualDensity(
                                    horizontal: 0, vertical: -4),
                                leading: Icon(Icons.app_registration_rounded,
                                    color: _colorTheme),
                                title: Text('Registration',
                                    style: Theme.of(context).textTheme.subtitle2),
                                onTap: () {
                                  // Navigator.of(context).pushNamed("/home");
                                },
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 18,
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.7),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              ListTile(
                                dense: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 12.0, vertical: 5.0),
                                visualDensity: const VisualDensity(
                                    horizontal: 0, vertical: -4),
                                leading: Icon(Icons.assessment_outlined,
                                    color: _colorTheme),
                                title: Text('Zoom Session',
                                    style: Theme.of(context).textTheme.subtitle2),
                                onTap: () {
                                  // _userController.updateValue();
                                },
                                trailing: Obx(
                                  () => Icon(
                                    _userController.lunchTab.value
                                        ? Icons.keyboard_arrow_down
                                        : Icons.arrow_forward_ios,
                                    size: 18,
                                    color: Theme.of(context)
                                        .primaryColor
                                        .withOpacity(0.7),
                                  ),
                                ),
                              ),

                              // Obx(()=> _userController.lunchTab.value ?
                              //     TweenAnimationBuilder(
                              //       tween: _scaleTween,
                              //       duration: const Duration(seconds: 1),
                              //       builder: (context, scale, child) {
                              //         return Transform.scale(scale: 1, child: child);
                              //       },
                              //       child: SingleChildScrollView(
                              //         padding: const EdgeInsets.fromLTRB(24, 4, 0, 8),
                              //         child: Column(
                              //           children: [
                              //             ListTile(
                              //               dense: true,
                              //               contentPadding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
                              //               visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                              //               leading: Icon(Icons.score,color: _colorTheme),
                              //               title: Text('1',style: Theme.of(context).textTheme.subtitle2),
                              //               onTap: (){
                              //                 // Navigator.of(context).pushNamed("/home");
                              //               },
                              //               trailing: Icon(Icons.arrow_forward_ios,size:18,color: Theme.of(context).primaryColor.withOpacity(0.7),),
                              //             ),
                              //             ListTile(
                              //               dense: true,
                              //               contentPadding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
                              //               visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                              //               leading: Icon(Icons.group_off,color: _colorTheme),
                              //               title: Text('2',style: Theme.of(context).textTheme.subtitle2),
                              //               onTap: (){
                              //                 // Navigator.of(context).pushNamed("/home");
                              //               },
                              //               trailing: Icon(Icons.arrow_forward_ios,size:18,color: Theme.of(context).primaryColor.withOpacity(0.7),),
                              //             ),
                              //             ListTile(
                              //               dense: true,
                              //               contentPadding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
                              //               visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                              //               leading: Icon(Icons.policy_outlined,color: _colorTheme),
                              //               title: Text('3',style: Theme.of(context).textTheme.subtitle2),
                              //               onTap: (){
                              //                 // Navigator.of(context).pushNamed("/home");
                              //               },
                              //               trailing: Icon(Icons.arrow_forward_ios,size:18,color: Theme.of(context).primaryColor.withOpacity(0.7),),
                              //             ),
                              //           ],
                              //         ),
                              //       ),
                              //     ):
                              //     const SizedBox()),
                              ListTile(
                                dense: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 12.0, vertical: 5.0),
                                visualDensity: const VisualDensity(
                                    horizontal: 0, vertical: -4),
                                leading:
                                    Icon(Icons.album_outlined, color: _colorTheme),
                                title: Text('Gallery',
                                    style: Theme.of(context).textTheme.subtitle2),
                                onTap: () {
                                  // Navigator.of(context).pushNamed("/home");
                                },
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 18,
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.7),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Center(
                          child: Text("One HR Policies"),
                        ),
                        const Center(
                          child: Text("7"),
                        ),
                        const Center(
                          child: Text("Q Connect"),
                        ),
                        SingleChildScrollView(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              ListTile(
                                dense: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 12.0, vertical: 5.0),
                                visualDensity: const VisualDensity(
                                    horizontal: 0, vertical: -4),
                                leading:
                                    Icon(Icons.report_rounded, color: _colorTheme),
                                title: Text('Sustainability 2021',
                                    style: Theme.of(context).textTheme.subtitle2),
                                onTap: () {
                                  // _userController.updateValue();
                                },
                                trailing: Obx(
                                  () => Icon(
                                    _userController.lunchTab.value
                                        ? Icons.keyboard_arrow_down
                                        : Icons.arrow_forward_ios,
                                    size: 18,
                                    color: Theme.of(context)
                                        .primaryColor
                                        .withOpacity(0.7),
                                  ),
                                ),
                              ),

                              // Obx(()=> _userController.lunchTab.value ?
                              //     TweenAnimationBuilder(
                              //       tween: _scaleTween,
                              //       duration: const Duration(seconds: 1),
                              //       builder: (context, scale, child) {
                              //         return Transform.scale(scale: 1, child: child);
                              //       },
                              //       child: SingleChildScrollView(
                              //         padding: const EdgeInsets.fromLTRB(24, 4, 0, 8),
                              //         child: Column(
                              //           children: [
                              //             ListTile(
                              //               dense: true,
                              //               contentPadding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
                              //               visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                              //               leading: Icon(Icons.score,color: _colorTheme),
                              //               title: Text('1',style: Theme.of(context).textTheme.subtitle2),
                              //               onTap: (){
                              //                 // Navigator.of(context).pushNamed("/home");
                              //               },
                              //               trailing: Icon(Icons.arrow_forward_ios,size:18,color: Theme.of(context).primaryColor.withOpacity(0.7),),
                              //             ),
                              //             ListTile(
                              //               dense: true,
                              //               contentPadding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
                              //               visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                              //               leading: Icon(Icons.group_off,color: _colorTheme),
                              //               title: Text('2',style: Theme.of(context).textTheme.subtitle2),
                              //               onTap: (){
                              //                 // Navigator.of(context).pushNamed("/home");
                              //               },
                              //               trailing: Icon(Icons.arrow_forward_ios,size:18,color: Theme.of(context).primaryColor.withOpacity(0.7),),
                              //             ),
                              //             ListTile(
                              //               dense: true,
                              //               contentPadding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
                              //               visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                              //               leading: Icon(Icons.policy_outlined,color: _colorTheme),
                              //               title: Text('3',style: Theme.of(context).textTheme.subtitle2),
                              //               onTap: (){
                              //                 // Navigator.of(context).pushNamed("/home");
                              //               },
                              //               trailing: Icon(Icons.arrow_forward_ios,size:18,color: Theme.of(context).primaryColor.withOpacity(0.7),),
                              //             ),
                              //           ],
                              //         ),
                              //       ),
                              //     ):
                              //     const SizedBox()),
                              ListTile(
                                dense: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 12.0, vertical: 5.0),
                                visualDensity: const VisualDensity(
                                    horizontal: 0, vertical: -4),
                                leading: Icon(Icons.report_gmailerrorred_sharp,
                                    color: _colorTheme),
                                title: Text('Sustainability 2020',
                                    style: Theme.of(context).textTheme.subtitle2),
                                onTap: () {
                                  // Navigator.of(context).pushNamed("/home");
                                },
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 18,
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.7),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                ))
              ],
            ),
          ),
        ),
        // const CustomGridView(),
      ],
    );
  }
}

class _CustomBalanceCard extends StatelessWidget {
  final IconData icon;
  final String entitled;
  final String availed;
  final String leaveName;
  const _CustomBalanceCard(
      {Key? key,
      required this.icon,
      required this.entitled,
      required this.availed,
      required this.leaveName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color _color = const Color(0xff115e7a);
    Color _color2 = const Color(0xfff2652e);
    Color _color3 = const Color(0xff009b9a);
    Color _color4 = const Color(0xff2b5485);
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          //1

          // border: Border.all(
          //     color: _color.withOpacity(0.5),
          //     width: 1.0,
          //     style: BorderStyle.solid),
          // borderRadius: BorderRadius.circular(8),
          // color: _color.withOpacity(0.02),

          //2

          // color: Colors.grey.shade200,
          // borderRadius: BorderRadius.circular(12),
          // border: Border.all(
          //   color: Colors.black,),

          //3

          // color: _color.withOpacity(0.03),
          // border: Border.all(color: _color3),
          // borderRadius: BorderRadius.circular(10),

          //4

          borderRadius: BorderRadius.circular(8),
          // border: Border.all(color: _color2 ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(1),
              spreadRadius: 1,
              blurRadius: 2,
              offset: const Offset(0, 2), // changes position of shadow
            ),
          ]),
      padding: const EdgeInsets.all(4.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(icon, color: Theme.of(context).primaryColor),
              Text(leaveName),
            ],
          ),
          Divider(color: _color),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text('Entitled'),
              Text(
                entitled,
                style: const TextStyle(
                    color: Colors.grey, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Divider(color: _color),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text('Availed'),
              Text(
                availed,
                style: const TextStyle(
                    color: Colors.grey, fontWeight: FontWeight.w500),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CustomGridView extends StatelessWidget {
  const CustomGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final UserController _userController = Get.find();
    return SizedBox(
      height: size.width * 0.25,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //   crossAxisCount: 3,
          //   childAspectRatio: 1.0,
          //   mainAxisSpacing: 2.0,
          //   crossAxisSpacing: 8.0,
          // ),
          physics: const AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: const EdgeInsets.only(
              left: 8.0, top: 8.0, right: 8.0, bottom: 0.0),
          itemCount: essMenu.length,
          itemBuilder: (context, index) {
            final _menu = essMenu[index];
            return _NotifyIconBadgerTile(
                size: size,
                notifyCount: _menu.count.toString(),
                notifyName: _menu.title,
                notifyIcon: _menu.icon,
                //iconColor: _color2,
                favIcon: Align(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {
                        if (_userController.favorites.contains(_menu.count)) {
                          _userController.removeFavorite(_menu);
                        } else {
                          _userController.addFavorite(_menu);
                        }
                      },
                      child: Obx(
                          () => _userController.favorites.contains(_menu.count)
                              ? const Icon(
                                  Icons.favorite_outlined,
                                  color: Colors.white,
                                  size: 16,
                                )
                              : const Icon(
                                  Icons.favorite_outline,
                                  color: Colors.grey,
                                  size: 16,
                                )),
                    )),
                onTap: () {});
          }),
    );
  }
}

class _NotifyIconBadgerTile extends StatelessWidget {
  final Size size;
  final String notifyCount;
  final String notifyName;
  final IconData notifyIcon;
  final Widget favIcon;
  final Function() onTap;
  const _NotifyIconBadgerTile(
      {Key? key,
      required this.size,
      required this.notifyCount,
      required this.notifyName,
      required this.notifyIcon,
      //required this.iconColor,
      required this.onTap,
      required this.favIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color _color2 = const Color(0xfff2652f);
    Color _colorTheme = Theme.of(context).primaryColor;

    return GestureDetector(
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            //padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
            width: size.width * 0.26,
            height: 65,
            //height: 65,

            //1
            // decoration: BoxDecoration(
            //     boxShadow: [
            //       BoxShadow(
            //         color: Colors.grey.withOpacity(0.5),
            //         spreadRadius: 1,
            //         blurRadius: 3,
            //         offset: const Offset(1, 2), // changes position of shadow
            //       ),
            //     ],
            //     //border: Border.all(color: _color2,width: 1),
            //     color:Colors.white,
            //     borderRadius: BorderRadius.circular(12.0)
            // ),
            decoration: BoxDecoration(
                // boxShadow: [
                //   BoxShadow(
                //     color: _colorTheme.withOpacity(0.5),
                //     spreadRadius: 1,
                //     blurRadius: 2,
                //     offset: const Offset(0, 2), // changes position of shadow
                //   ),
                // ],
                border: Border.all(color: Colors.white, width: 1),
                color: _colorTheme,
                borderRadius: BorderRadius.circular(8.0)),
            // decoration: BoxDecoration(
            //     boxShadow: [
            //       BoxShadow(
            //         color: _colorTheme.withOpacity(0.5),
            //         spreadRadius: 1,
            //         blurRadius: 2,
            //         offset: const Offset(0, 2), // changes position of shadow
            //       ),
            //     ],
            //     border: Border.all(color: _colorTheme,width: 1),
            //      color:Colors.white,
            //     borderRadius: BorderRadius.circular(12.0)
            // ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 2,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      notifyIcon,
                      size: 28,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 60,
                      child: Text(
                        notifyName,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: Colors.white,
                            // decoration: TextDecoration.underline,
                            fontSize: 12.0),
                      ),
                    ),
                  ],
                ),
                favIcon,
                const SizedBox(
                  width: 2,
                ),
              ],
            ),
          ),
          Positioned(
            top: -6,
            right: 0,
            //left: -5,
            child: notifyCount == '0'
                ? const SizedBox()
                : Container(
                    padding: const EdgeInsets.all(3.5),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        color: Colors.red, shape: BoxShape.circle),
                    child: Text(
                      notifyCount,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: notifyCount == 10 ? 10 : 13),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
