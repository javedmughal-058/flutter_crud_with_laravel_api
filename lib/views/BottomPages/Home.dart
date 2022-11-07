import 'package:bottom_bar_with_sheet/bottom_bar_with_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud_with_laravel_api/controllers/UserController.dart';
import 'package:flutter_crud_with_laravel_api/views/BottomPages/Currency.dart';
import 'package:flutter_crud_with_laravel_api/views/BottomPages/Setting.dart';
import 'package:flutter_crud_with_laravel_api/views/BottomPages/Team.dart';
import 'package:flutter_crud_with_laravel_api/views/StartPage.dart';
import 'package:get/get.dart';

import '../MenuPages/DecisionSupport.dart';

class main_page extends StatefulWidget {
  const main_page({Key? key}) : super(key: key);

  @override
  State<main_page> createState() => main_pageState();
}

class main_pageState extends State<main_page> {
  final _bottomBarController = BottomBarWithSheetController(initialIndex: 0);

  int _currentIndex = 0;
  final screens = [
    const StartPage(),
    const Currency(),
    const Setting(),
    const Team(),

  ];

  @override
  Widget build(BuildContext context) {
    Color _colorTheme = Theme.of(context).primaryColor;
    return SafeArea(
      //top: false,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 40.0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          leading:   GestureDetector(
            onTap: (){
              Get.toNamed('/profile_page');
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Stack(
                alignment: AlignmentDirectional.centerStart,
                children: [
                  const CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/images/slider1.jpg'),
                  ),
                  Positioned(
                    //right: 0,
                    //bottom: 0,
                    left: 15,
                    top: 18,
                    child: Container(
                        padding: const EdgeInsets.all(1),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color:Theme.of(context).primaryColor, width: 2)
                        ),
                        // constraints: const BoxConstraints(
                        //   minWidth: 8,
                        //   minHeight: 8,
                        // ),
                        child:  Icon(Icons.menu, color: Theme.of(context).primaryColor , size: 12,)
                    ),
                  )
                ],
              ),
            ),
          ),
          title:Text('USG Smart Office', style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 16)),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color:Theme.of(context).primaryColor,
                  size: 22,
                )),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Icon(
                  Icons.notifications,
                  color: Theme.of(context).primaryColor,
                ),
                Positioned(
                  right: 0,
                  top: 8,
                  child: Container(
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 12,
                      minHeight: 12,
                    ),
                    child: const Text(
                      '5',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(width: 10,),
          ],
        ),
        // extendBodyBehindAppBar: true,
        // extendBody: true,
        //backgroundColor: Colors.blue,
        body: screens[_currentIndex],
        bottomNavigationBar: BottomBarWithSheet(
          controller: _bottomBarController,
          bottomBarTheme: BottomBarTheme(
            selectedItemIconSize: 28,
            mainButtonPosition: MainButtonPosition.middle,
            decoration: BoxDecoration(
              color: _colorTheme,
              borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
            ),
            itemIconColor: Colors.grey.withOpacity(0.5),
            itemTextStyle: TextStyle(
              color: Colors.grey.withOpacity(0.5),
              fontSize: 14.0,
            ),
            selectedItemIconColor: Colors.white,
            selectedItemTextStyle: const TextStyle(
              color: Colors.white,
              fontSize: 12.0,
            ),
          ),
          mainActionButtonTheme: MainActionButtonTheme(
              size: 50,
              color: Colors.white,
              icon: Icon(
                Icons.keyboard_arrow_up,
                color: _colorTheme,
                size: 32,
              )),
          onSelectItem: (_currentIndex) => setState(() {
              this._currentIndex = _currentIndex;
              }),
          sheetChild: const CustomGridView(),
          items: const [
            BottomBarWithSheetItem(label: 'Home', icon: Icons.home),
            BottomBarWithSheetItem(
                label: 'Currency', icon: Icons.description),
            BottomBarWithSheetItem(label: 'Setting', icon: Icons.settings),
            BottomBarWithSheetItem(label: 'Team', icon: Icons.people),
          ],
        ),
      ),
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
            width: size.width * 0.5,
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      notifyIcon,
                      size: 28,
                      color: Colors.white,
                    ),
                    Text(
                      notifyName,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Colors.white,
                          // decoration: TextDecoration.underline,
                          fontSize: 12.0),
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

class CustomGridView extends StatelessWidget {
  const CustomGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final UserController _userController = Get.find();
    return Obx(
      () => GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.0,
            mainAxisSpacing: 2.0,
            crossAxisSpacing: 8.0,
          ),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: const EdgeInsets.only(
              left: 8.0, top: 8.0, right: 8.0, bottom: 0.0),
          itemCount: _userController.favoritesmenu.length,
          itemBuilder: (context, index) {
            final _menu = _userController.favoritesmenu[index];
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
