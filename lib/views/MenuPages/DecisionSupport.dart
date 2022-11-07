import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud_with_laravel_api/controllers/UserController.dart';
import 'package:flutter_crud_with_laravel_api/models/MenuModel.dart';
import 'package:flutter_crud_with_laravel_api/views/FirstPage.dart';
import 'package:flutter_crud_with_laravel_api/views/OptionalScreen.dart';
import 'package:get/get.dart';

class DecisionSupport extends StatefulWidget {
  const DecisionSupport({Key? key}) : super(key: key);

  @override
  State<DecisionSupport> createState() => _DecisionSupportState();
}

class _DecisionSupportState extends State<DecisionSupport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DSS'),
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

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UserController _userController = Get.find();

    final size = MediaQuery.of(context).size;
    Color _colorTheme = Theme.of(context).primaryColor;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 8, 0, 0),
            child: Text('Leaves Approval',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black)),
          ),
          SizedBox(
            height: size.width*0.35,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                //   crossAxisCount: 3,
                //   childAspectRatio: 1.0,
                //   mainAxisSpacing: 8.0,
                //   crossAxisSpacing: 8.0,
                // ),
                physics: const AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.only(
                    left: 8.0, top: 8.0, right: 8.0, bottom: 0.0),
                itemCount: 5,
                itemBuilder: (context, index) {
                  final _menu = dssMenu[index];
                  return Container(
                    padding: const EdgeInsets.all(3),
                    margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: _colorTheme, width: 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text('Muhammad Javed', style: TextStyle(fontWeight: FontWeight.w700),),
                        const Text('Management Trainee Officer'),
                        const Text('17-10-2022 to 17-10-2022'),
                        const Text('Casual' ,style: TextStyle(fontWeight: FontWeight.w700, color: Colors.grey),),
                        SizedBox(
                          width: size.width*0.6,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: (){},
                                child: Container(
                                  padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(color: _colorTheme)
                                    ),
                                    child: const Text('Approve')),
                              ),
                              // OutlinedButton(
                              //     style: OutlinedButton.styleFrom(
                              //       side: BorderSide(color: Theme.of(context).primaryColor),
                              //     ),
                              //     onPressed: (){}, child: Text('Approve' , style: Theme.of(context).textTheme.bodyText1,)),
                              // const SizedBox(width: 4,),
                              GestureDetector(
                                onTap: (){},
                                child: Container(
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.red
                                    ),
                                    child: const Text('Cancel', style: TextStyle(color: Colors.white),)),
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 8, 0, 0),
            child: Text('DSS',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black)),
          ),
          // GridView.count(
          //   crossAxisCount: 4,
          //   mainAxisSpacing: 8,
          //   crossAxisSpacing: 15,
          //   shrinkWrap: true,
          //   //scrollDirection: Axis.vertical,
          //   padding: const EdgeInsets.only(left: 15.0,top: 10.0,bottom: 10.0,right: 10),
          //   children: [
          //     _NotifyIconBadgerTile(
          //         size: size,
          //         notifyCount: '1',
          //         notifyName: 'Apply Leave',
          //         notifyIcon: Icons.group_off,
          //         //iconColor: _color2,
          //         onTap: (){},
          //         onLong:(){
          //           showDialog(
          //               context: context, builder: (BuildContext context){
          //             return AlertDialog(
          //               actions: [
          //                 GestureDetector(
          //                   onTap: (){
          //                     _userController.favourite();
          //                   },
          //                   child: Row(
          //                     children:  [
          //                       Obx(()=>Icon(_userController.setFav.value?Icons.favorite :Icons.favorite_border ),),
          //                       const Text('Add to Favourite'),
          //                     ],
          //                   ),
          //                 )
          //               ],
          //             );
          //           });
          //         } ,
          //     ),
          //     _NotifyIconBadgerTile(
          //         size: size,
          //         notifyCount: '0',
          //         notifyName: 'Garments',
          //         notifyIcon: Icons.request_quote_outlined,
          //         //iconColor: _color2,
          //         onTap: (){},
          //         onLong:(){} ,
          //     ),
          //     _NotifyIconBadgerTile(
          //         size: size,
          //         notifyCount: '6',
          //         notifyName: 'Lunch Request',
          //         notifyIcon: Icons.shopping_cart_outlined,
          //         //iconColor:  _color2,
          //         onTap: (){},
          //         onLong:(){} ,
          //     ),
          //
          //   ],
          // ),

          SizedBox(
            height: size.width*0.25,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                //   crossAxisCount: 3,
                //   childAspectRatio: 1.0,
                //   mainAxisSpacing: 8.0,
                //   crossAxisSpacing: 8.0,
                // ),
                physics: const AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0, bottom: 0.0),
                itemCount: dssMenu.length,
                itemBuilder: (context, index) {
                  final _menu = dssMenu[index];
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
                              if (_userController.favorites
                                  .contains(_menu.count)) {
                                _userController.removeFavorite(_menu);
                              } else {
                                _userController.addFavorite(_menu);
                              }
                            },
                            child: Obx(() =>
                                _userController.favorites.contains(_menu.count)
                                    ? const Icon(
                                        Icons.favorite_outlined,
                                        color: Colors.white,
                                        size: 20,
                                      )
                                    : const Icon(
                                        Icons.favorite_outline,
                                        color: Colors.grey,
                                        size: 20,
                                      )),
                          )),
                      onTap: () {});
                }),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 8, 0, 0),
            child: Text('CTM Approvals',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black)),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(16, 10, 10, 8),
            margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: const Offset(1, 2), // changes position of shadow
                    ),
                  ],
                  //border: Border.all(color: _color2,width: 1),
                  color:Colors.white,
                  borderRadius: BorderRadius.circular(8.0)
              ),
            // decoration: BoxDecoration(
            //   color: Colors.white,
            //   border: Border.all(color: _colorTheme, width: 1),
            //   borderRadius: BorderRadius.circular(6),
            // ),
            child: Column(
              children: [
                // TextButton.icon(onPressed: (){}, icon: Icon(Icons.notifications), label: Text('You have 0 pending Travel Requests')),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: _colorTheme,
                          borderRadius: BorderRadius.circular(50)

                        ),
                        child: const Icon(Icons.notifications,color: Colors.white, size: 18,)),
                    const SizedBox(width: 8,),
                    const Text('You have 0 pending Travel Requests'),
                  ],
                ),
                const SizedBox(height: 5,),
                Row(
                  children: [
                    Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: _colorTheme,
                            borderRadius: BorderRadius.circular(50)

                        ),
                        child: const Icon(Icons.notifications,color: Colors.white, size: 18,)),
                    const SizedBox(width: 8,),
                    const Text('You have 1 pending Travel Desk Requests'),
                  ],
                ),
                const SizedBox(height: 5,),
                Row(
                  children: [
                    Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: _colorTheme,
                            borderRadius: BorderRadius.circular(50)

                        ),
                        child: const Icon(Icons.notifications,color: Colors.white, size: 18,)),
                    const SizedBox(width: 8,),
                    const Expanded(child:  Text('You have 0 pending Travel Reimbursement Requests')),
                  ],
                ),
                const SizedBox(height: 5,),
                Row(
                  children: [
                    Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: _colorTheme,
                            borderRadius: BorderRadius.circular(50)

                        ),
                        child: const Icon(Icons.notifications,color: Colors.white, size: 18,)),
                    const SizedBox(width: 8,),
                    const Text('You have 0 pending Visa Requests'),
                  ],
                ),

              ],
            ),
          ),

          // GridView.builder(
          //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: 3,
          //       childAspectRatio: 1.0,
          //       mainAxisSpacing: 8.0,
          //       crossAxisSpacing: 8.0,
          //     ),
          //     physics: const NeverScrollableScrollPhysics(),
          //     shrinkWrap: true,
          //     padding: const EdgeInsets.only(left: 8.0,top: 8.0,right: 8.0,bottom: 8.0),
          //     itemCount: essMenu.length,
          //     itemBuilder: (context,index){
          //       final _menu = essMenu[index];
          //       return GestureDetector(
          //         onTap: (){},
          //         child: Stack(
          //           clipBehavior: Clip.none,
          //           children: [
          //             Container(
          //               //padding: const EdgeInsets.all(3),
          //               width: size.width*0.5,
          //               height: 65,
          //               //height: 65,
          //
          //               //1
          //               // decoration: BoxDecoration(
          //               //     boxShadow: [
          //               //       BoxShadow(
          //               //         color: Colors.grey.withOpacity(0.5),
          //               //         spreadRadius: 1,
          //               //         blurRadius: 3,
          //               //         offset: const Offset(1, 2), // changes position of shadow
          //               //       ),
          //               //     ],
          //               //     //border: Border.all(color: _color2,width: 1),
          //               //     color:Colors.white,
          //               //     borderRadius: BorderRadius.circular(12.0)
          //               // ),
          //
          //               decoration: BoxDecoration(
          //                 // boxShadow: [
          //                 //   BoxShadow(
          //                 //     color: _colorTheme.withOpacity(0.5),
          //                 //     spreadRadius: 1,
          //                 //     blurRadius: 2,
          //                 //     offset: const Offset(0, 2), // changes position of shadow
          //                 //   ),
          //                 // ],
          //                   border: Border.all(color: Colors.white,width: 1),
          //                   color:_colorTheme,
          //                   borderRadius: BorderRadius.circular(8.0)
          //               ),
          //               child: Row(
          //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                 children: [
          //                   const SizedBox(width: 2,),
          //                   Column(
          //                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //                     crossAxisAlignment: CrossAxisAlignment.center,
          //                     children: [
          //
          //                       Icon(_menu.icon,size: 28,color: Colors.white),
          //                       Text(_menu.title,
          //                         style: const TextStyle(
          //                             color: Colors.white,
          //                             // decoration: TextDecoration.underline,
          //                             fontSize: 12.0),),
          //                     ],
          //                   ),
          //                   Align(
          //                       alignment: Alignment.center,
          //                       child: GestureDetector(
          //                         onTap: (){
          //                           if(_userController.favorites.contains(_menu.count)){
          //                             _userController.removeFavorite(_menu);
          //                           }else{
          //                             _userController.addFavorite(_menu);
          //                           }
          //
          //                         },
          //                         child: Obx(()=>_userController.favorites.contains(_menu.count)?
          //                         Icon(Icons.favorite_outlined,color: Colors.white ,size: 16,):
          //                         const Icon(Icons.favorite_outline,color: Colors.grey, size: 16,)),
          //                       )
          //                   ),
          //                   const SizedBox(width: 2,),
          //                 ],
          //               ),
          //             ),
          //             // Positioned(
          //             //   top: -6,
          //             //   right: 4,
          //             //   //left: -5,
          //             //   child: menu.count== '0'?
          //             //   const SizedBox():
          //             //   Container(
          //             //     // width: 18,
          //             //     // height: 18,
          //             //     padding: const EdgeInsets.all(3.5),
          //             //     alignment: Alignment.center,
          //             //     decoration: const BoxDecoration(
          //             //         color: Colors.red,
          //             //         shape: BoxShape.circle
          //             //     ),
          //             //     child: Text(menu.count.toString(),style: TextStyle(color: Colors.white,fontSize: 13),),
          //             //   ),
          //             // ),
          //           ],
          //         ),
          //       );
          //     }),

          // GridView.count(
          //   crossAxisCount: 4,
          //   mainAxisSpacing: 8,
          //   crossAxisSpacing: 15,
          //   shrinkWrap: true,
          //   //scrollDirection: Axis.vertical,
          //   padding: const EdgeInsets.only(left: 15.0,top: 10.0,bottom: 10.0,right: 10),
          //   children: [
          //     _NotifyIconBadgerTile(
          //         size: size,
          //         notifyCount: '1',
          //         notifyName: 'Leave',
          //         notifyIcon: Icons.group_off,
          //         //iconColor: _color2,
          //         onTap: (){},
          //
          //     ),
          //     _NotifyIconBadgerTile(
          //         size: size,
          //         notifyCount: '0',
          //         notifyName: 'PR',
          //         notifyIcon: Icons.request_quote_outlined,
          //         //iconColor: _color2,
          //         onTap: (){},
          //
          //     ),
          //     _NotifyIconBadgerTile(
          //         size: size,
          //         notifyCount: '6',
          //         notifyName: 'PO',
          //         notifyIcon: Icons.shopping_cart_outlined,
          //         //iconColor:  _color2,
          //         onTap: (){},
          //
          //     ),
          //     _NotifyIconBadgerTile(
          //         size: size,
          //         notifyCount: '2',
          //         notifyName: 'POC',
          //         notifyIcon: Icons.description,
          //         //iconColor: _color2,
          //         onTap: (){},
          //
          //     ),
          //
          //     _NotifyIconBadgerTile(
          //         size: size,
          //         notifyCount: '0',
          //         notifyName: 'Projects',
          //         notifyIcon: Icons.info,
          //         //iconColor: _color2,
          //         onTap: (){},
          //
          //     ),
          //
          //     _NotifyIconBadgerTile(
          //         size: size,
          //         notifyCount: '0',
          //         notifyName: 'CTM',
          //         notifyIcon: Icons.approval,
          //         //iconColor: _color2,
          //         onTap: (){},
          //
          //     ),
          //
          //
          //   ],
          // ),
          // const Padding(
          //   padding: EdgeInsets.fromLTRB(16,0,0,0),
          //   child: Text('Appointment', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black)),
          // ),
          // GridView.count(
          //   crossAxisCount: 4,
          //   mainAxisSpacing: 8,
          //   crossAxisSpacing: 15,
          //   shrinkWrap: true,
          //   //scrollDirection: Axis.vertical,
          //   padding: const EdgeInsets.only(left: 15.0,top: 10.0,bottom: 10.0,right: 10),
          //   children: [
          //     _NotifyIconBadgerTile(
          //         size: size,
          //         notifyCount: '1',
          //         notifyName: 'Create Appointment',
          //         notifyIcon: Icons.group_off,
          //         //iconColor: _color2,
          //         onTap: (){},
          //
          //     ),
          //     _NotifyIconBadgerTile(
          //         size: size,
          //         notifyCount: '0',
          //         notifyName: 'My Appointment',
          //         notifyIcon: Icons.request_quote_outlined,
          //         //iconColor: _color2,
          //         onTap: (){},
          //
          //       ),
          //     _NotifyIconBadgerTile(
          //         size: size,
          //         notifyCount: '6',
          //         notifyName: 'other Host Appointment',
          //         notifyIcon: Icons.shopping_cart_outlined,
          //         //iconColor:  _color2,
          //         onTap: (){},
          //
          //     ),
          //     _NotifyIconBadgerTile(
          //         size: size,
          //         notifyCount: '2',
          //         notifyName: 'Appointment History',
          //         notifyIcon: Icons.description,
          //         //iconColor: _color2,
          //         onTap: (){},
          //
          //     ),
          //
          //     _NotifyIconBadgerTile(
          //         size: size,
          //         notifyCount: '0',
          //         notifyName: 'Actionable Appointment',
          //         notifyIcon: Icons.info,
          //         //iconColor: _color2,
          //         onTap: (){},
          //
          //     ),
          //
          //     _NotifyIconBadgerTile(
          //         size: size,
          //         notifyCount: '0',
          //         notifyName: 'Assign Actions',
          //         notifyIcon: Icons.approval,
          //         //iconColor: _color2,
          //         onTap: (){},
          //
          //     ),
          //
          //
          //   ],
          // ),
        ],
      ),
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
        border: Border.all(color: _color2),
        color: Colors.white,
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey.withOpacity(1),
        //     spreadRadius: 1,
        //     blurRadius: 2,
        //     offset: const Offset(0, 2), // changes position of shadow
        //   ),
        // ]
      ),
      padding: const EdgeInsets.all(8.0),
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
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //   crossAxisCount: 3,
        //   childAspectRatio: 1.0,
        //   mainAxisSpacing: 8.0,
        //   crossAxisSpacing: 8.0,
        // ),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: const EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0, bottom: 0.0),
        itemCount: dssMenu.length,
        itemBuilder: (context, index) {
          final _menu = dssMenu[index];
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
                                size: 20,
                              )
                            : const Icon(
                                Icons.favorite_outline,
                                color: Colors.grey,
                                size: 20,
                              )),
                  )),
              onTap: () {});
        });
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
            // padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
            margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
            width: size.width*0.26,
            height: 65,

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
                      size: 32,
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
                      style: const TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
