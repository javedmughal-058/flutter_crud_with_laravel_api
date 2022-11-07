import 'package:bottom_bar_with_sheet/bottom_bar_with_sheet.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud_with_laravel_api/controllers/UserController.dart';
import 'package:flutter_crud_with_laravel_api/models/MenuModel.dart';
import 'package:flutter_crud_with_laravel_api/views/HomPage.dart';
import 'package:flutter_crud_with_laravel_api/views/MenuPages/Ess.dart';
import 'package:get/get.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage>{
  final _bottomBarController = BottomBarWithSheetController(initialIndex: 0);


  @override
  void initState() {
    _bottomBarController.stream.listen((opened) {
      debugPrint('Bottom bar ${opened ? 'opened' : 'closed'}');
    });
  }

  @override
  Widget build(BuildContext context) {
    final CarouselController _controller = CarouselController();
    int _carouselIndex = 0;
    final List<String> imgList = [
      'assets/images/slider1.jpg',
      'assets/images/slider2.jpg',
      'assets/images/slider3.jpg',
      'assets/images/slider4.jpg',
      'assets/images/slider5.jpg'
    ];
    Color _color = const Color(0xff115e7a);
    Color _color2 = const Color(0xfff2652f);
    Color _color3 = const Color(0xff009b9a);
    Color _color4 = const Color(0xff2b5485);
    Color _colorwhite = const Color(0xffffffff);
    Color _colorTheme = Theme.of(context).primaryColor;
    int itemCount = menuList.length;
    final size = MediaQuery.of(context).size;
    final UserController _userController = Get.find();

    return SafeArea(
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
        body: SingleChildScrollView(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Row(
              //   //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     const SizedBox(width: 3,),
              //     GestureDetector(
              //       onTap: (){
              //         Get.toNamed('/profile_page');
              //       },
              //       child: Stack(
              //         children: [
              //           const CircleAvatar(
              //             radius: 17,
              //             backgroundColor: Colors.white,
              //             backgroundImage: AssetImage('assets/images/slider1.jpg'),
              //           ),
              //           Positioned(
              //             right: 0,
              //             bottom: 0,
              //             child: Container(
              //               padding: const EdgeInsets.all(1),
              //               decoration: BoxDecoration(
              //                 color:Theme.of(context).primaryColor,
              //                 borderRadius: BorderRadius.circular(6),
              //               ),
              //               constraints: const BoxConstraints(
              //                 minWidth: 12,
              //                 minHeight: 12,
              //               ),
              //               child: const Icon(Icons.menu, color: Colors.white, size: 13,)
              //             ),
              //           )
              //         ],
              //       ),
              //     ),
              //
              //     SizedBox(width: Get.width*0.215,),
              //     Text('USG Smart Office', style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 16)),
              //     const Spacer(),
              //     IconButton(
              //         onPressed: () {},
              //         icon: Icon(
              //           Icons.search,
              //           color: Theme.of(context).primaryColor,
              //           size: 22,
              //         )),
              //     Stack(
              //       children: [
              //         Icon(
              //           Icons.notifications,
              //           color: Theme.of(context).primaryColor,
              //         ),
              //         Positioned(
              //           right: 0,
              //           child: Container(
              //             padding: EdgeInsets.all(1),
              //             decoration: BoxDecoration(
              //               color: Colors.red,
              //               borderRadius: BorderRadius.circular(6),
              //             ),
              //             constraints: BoxConstraints(
              //               minWidth: 12,
              //               minHeight: 12,
              //             ),
              //             child: Text(
              //               '5',
              //               style: TextStyle(
              //                 color: Colors.white,
              //                 fontSize: 8,
              //               ),
              //               textAlign: TextAlign.center,
              //             ),
              //           ),
              //         )
              //       ],
              //     ),
              //     const SizedBox(
              //       width: 10,
              //     ),
              //   ],
              // ),
              Stack(
                children: [
                  // Container(
                  //   padding: EdgeInsets.all(5),
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(20),
                  //   ),
                  //   child: CarouselSlider(
                  //     options: CarouselOptions(
                  //       height: 200.0,
                  //       autoPlayCurve: Curves.linear,
                  //       scrollDirection: Axis.horizontal,
                  //       pageSnapping: false,
                  //       autoPlay: true,
                  //       viewportFraction: 1.0,
                  //       disableCenter: true,
                  //       onPageChanged: (index, reason) {
                  //         setState(() {
                  //           _carouselIndex = index;
                  //         });
                  //       },
                  //     ),
                  //     items: imgList.map((e) => Container(
                  //       height: 200.0,
                  //       child: Image.asset(e, fit: BoxFit.cover,),
                  //     ),
                  //     ).toList(),
                  //   ),
                  // ),
                  Container(
                    //height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0)),
                    // color: Colors.amber[600],
                    child: CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: true,
                        enlargeCenterPage: true,
                        onPageChanged: (index, reason) {
                          setState(
                            () {
                              _carouselIndex = index;
                            },
                          );
                        },
                      ),
                      items: imgList.map(
                        (imagepath) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 0),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: SizedBox.fromSize(
                                        size: Size.fromRadius(100),
                                        child: Image.asset(imagepath))),
                              );
                            },
                          );
                        },
                      ).toList(),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: Get.width * 0.35,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imgList.asMap().entries.map((entry) {
                        return GestureDetector(
                          onTap: () => _controller.animateToPage(entry.key),
                          child: Container(
                            width: 12.0,
                            height: 12.0,
                            margin: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 4.0),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: (Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? Colors.white
                                        : Theme.of(context).primaryColor).withOpacity(_carouselIndex == entry.key ? 1 : 0.4)),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  Positioned(
                      top: 80.0,
                      left: Get.width * 0.3,
                      child: Column(
                        children: const [
                          Text('US GROUP',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold)),
                          Text('Make Business Sustainable',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              )),
                        ],
                      ))
                ],
              ),

              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'USG Menu',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: (){
                      Get.toNamed('/appointment_home');
                    },
                    child: Text(
                      'View All',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .18,
                child: ListView.separated(
                  separatorBuilder: (_, __) => const SizedBox(width: 8),
                  scrollDirection: Axis.horizontal,
                  itemCount: menuList.length ~/ 2,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        productItem((itemCount ~/ 2) * 0 + index, context),
                        productItem((itemCount ~/ 2) * 1 + index, context),
                        //productItem((itemCount ~/ 2) * 2 + index, context),
                      ],
                    );
                  },
                ),
              ),
              // GridView.builder(
              //         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //           crossAxisCount: 4,
              //           childAspectRatio: 2,
              //           mainAxisSpacing: 12,
              //           crossAxisSpacing: 8.0,
              //         ),
              //         physics: const NeverScrollableScrollPhysics(),
              //         shrinkWrap: true,
              //         padding: const EdgeInsets.only(left: 4.0,top: 8.0,right: 8.0,bottom: 8.0),
              //         itemCount: menuList.length,
              //         itemBuilder: (context,index){
              //           final menu = menuList[index];
              //           return GestureDetector(
              //             onTap: (){
              //               Navigator.of(context).pushNamed(menu.route);
              //             },
              //             child: Column(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               //crossAxisAlignment: CrossAxisAlignment.center,
              //               children: [
              //                 Icon(menu.icon,color: menu.color,size: 22,),
              //                 const SizedBox(height: 5,),
              //                 Text(menu.title,
              //                     style: const TextStyle(fontSize: 10.0)),
              //               ],
              //             ),
              //           );
              //         }),


              // Row(
              //   children:[
              //      const SizedBox(width: 10,),
              //      Text('ESS', style: Theme.of(context).textTheme.bodyText1,),
              //   ],
              // ),


              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       ElevatedButton(
              //           style: ButtonStyle(
              //             minimumSize: MaterialStateProperty.all(
              //                 Size(MediaQuery.of(context).size.width, 40.0)),
              //             backgroundColor: MaterialStateProperty.all(_color),
              //           ),
              //           onPressed: () {},
              //           child: Text('Submit')),
              //
              //       ElevatedButton(
              //           style: ButtonStyle(
              //             minimumSize: MaterialStateProperty.all(
              //                 Size(MediaQuery.of(context).size.width, 40.0)),
              //             backgroundColor: MaterialStateProperty.all(_color2),
              //           ),
              //           onPressed: () {},
              //           child: Text('Submit')),
              //       ElevatedButton(
              //           style: ButtonStyle(
              //             minimumSize: MaterialStateProperty.all(
              //                 Size(MediaQuery.of(context).size.width, 40.0)),
              //             backgroundColor: MaterialStateProperty.all(_color3),
              //           ),
              //           onPressed: () {},
              //           child: Text('Submit')),
              //       ElevatedButton(
              //           style: ButtonStyle(
              //             minimumSize: MaterialStateProperty.all(
              //                 Size(MediaQuery.of(context).size.width, 40.0)),
              //             backgroundColor: MaterialStateProperty.all(_color4),
              //           ),
              //           onPressed: () {},
              //           child: Text('Submit')),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
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
            selectedItemIconColor:Colors.white,
            selectedItemTextStyle:  TextStyle(
              color:Colors.white,
              fontSize: 12.0,
            ),
          ),
          mainActionButtonTheme: MainActionButtonTheme( size: 50, color: Colors.white, icon: Icon(Icons.keyboard_arrow_up, color: _colorTheme, size: 32,)),
          onSelectItem: (index) => debugPrint('$index'),
          sheetChild:   Obx(()=>GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1.0,
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
              ),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.only(left: 8.0,top: 8.0,right: 8.0,bottom: 8.0),
              itemCount: _userController.favoritesmenu.length,
              itemBuilder: (context,index){
                final _fav =  _userController.favoritesmenu[index];
                return GestureDetector(
                  onTap: (){},
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        //padding: const EdgeInsets.all(3),
                        width: 85,
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
                            border: Border.all(color: Colors.white,width: 1),
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(8.0)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(_fav.icon,size: 28,color: _colorTheme),
                                Text(_fav.title,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: _colorTheme,
                                      // decoration: TextDecoration.underline,
                                      fontSize: 10.0),),
                              ],
                            ),
                            Align(
                                alignment: Alignment.center,
                                child: GestureDetector(
                                  onTap: (){
                                    if(_userController.favorites.contains(_fav.count)){
                                      _userController.removeFavorite(_fav);
                                    }else{
                                      _userController.addFavorite(_fav);
                                    }

                                  },
                                  child: Obx(()=>_userController.favorites.contains(_fav.count)?
                                  Icon(Icons.favorite_outlined,color: _colorTheme ,size: 16,):
                                  const Icon(Icons.favorite_outline,color: Colors.grey, size: 16,)),
                                )
                            ),
                          ],
                        ),
                      ),
                      // Positioned(
                      //   top: -6,
                      //   right: 4,
                      //   //left: -5,
                      //   child: menu.count== '0'?
                      //   const SizedBox():
                      //   Container(
                      //     // width: 18,
                      //     // height: 18,
                      //     padding: const EdgeInsets.all(3.5),
                      //     alignment: Alignment.center,
                      //     decoration: const BoxDecoration(
                      //         color: Colors.red,
                      //         shape: BoxShape.circle
                      //     ),
                      //     child: Text(menu.count.toString(),style: TextStyle(color: Colors.white,fontSize: 13),),
                      //   ),
                      // ),
                    ],
                  ),
                );

              })),
          items: const [
            BottomBarWithSheetItem(label: 'Home', icon: Icons.home),
            BottomBarWithSheetItem(label: 'Currency', icon: Icons.description),
            BottomBarWithSheetItem(label: 'Setting', icon: Icons.settings),
            BottomBarWithSheetItem(label: 'Team', icon: Icons.people),
          ],
        ),
      ),
    );
  }
}



Widget productItem(int index, context) => Container(
      padding: const EdgeInsets.fromLTRB(8, 0, 6, 6),
      decoration: BoxDecoration(
        //color: Colors.grey[50],
        borderRadius: BorderRadius.circular(8),
      ),
      //elevation: 1,
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.circular(5.0),
      // ),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(menuList[index].route);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              menuList[index].icon,
              color: menuList[index].color,
              size: 24,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(menuList[index].title, style: const TextStyle(fontSize: 12.0)),
          ],
        ),
      ),
    );

class _NotifyIconBadgerTile extends StatelessWidget {
  final Size size;
  final String notifyCount;
  final String notifyName;
  final IconData notifyIcon;
  final Color iconColor;
  final Function() onTap;
  const _NotifyIconBadgerTile({Key? key,required this.size,
    required this.notifyCount,
    required this.notifyName,
    required this.notifyIcon,
    required this.iconColor,
    required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color _color2 = const Color(0xfff2652f);
    Color _colorTheme = Theme.of(context).primaryColor;
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 50,
                height: 50,
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
                    borderRadius: BorderRadius.circular(12.0)
                ),
                child: Icon(notifyIcon,size: 24,color: _colorTheme),
              ),
              Text(notifyName,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: _colorTheme,
                    // decoration: TextDecoration.underline,
                    fontSize: 10.0),),
            ],
          ),
          Positioned(
            top: -6,
            right: 12,
            //left: -5,
            child: notifyCount == '0'?
            const SizedBox():
            Container(
              // width: 18,
              // height: 18,
              padding: const EdgeInsets.all(3.5),
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle
              ),
              child: Text(notifyCount,style: TextStyle(color: Colors.white,fontSize: 13),),
            ),
          ),
        ],
      ),
    );
  }
}