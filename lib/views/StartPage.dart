import 'package:bottom_bar_with_sheet/bottom_bar_with_sheet.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud_with_laravel_api/models/MenuModel.dart';
import 'package:flutter_crud_with_laravel_api/views/HomPage.dart';
import 'package:flutter_crud_with_laravel_api/views/MenuPages/AppointmentHome.dart';
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
    Color _color2 = const Color(0xfff2652e);
    Color _color3 = const Color(0xff009b9a);
    Color _color4 = const Color(0xff2b5485);
    int itemCount = menuList.length;
    final size = MediaQuery.of(context).size;

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
                    left: 16,
                    top: 22,
                    child: Container(
                        padding: const EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: _color2, width: 1)
                        ),
                        // constraints: const BoxConstraints(
                        //   minWidth: 8,
                        //   minHeight: 8,
                        // ),
                        child: const Icon(Icons.menu, color: Colors.white , size: 13,)
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
              const SizedBox(
                height: 10,
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
                height: MediaQuery.of(context).size.height * .15,
                child: ListView.separated(
                  separatorBuilder: (_, __) => const SizedBox(width: 5),
                  scrollDirection: Axis.horizontal,
                  itemCount: menuList.length ~/ 2,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        productItem((itemCount ~/ 2) * 0 + index, context),
                        productItem((itemCount ~/ 2) * 1 + index, context),
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
              color: Theme.of(context).primaryColor,
              borderRadius: const BorderRadius.vertical(top: Radius.circular(25)),
            ),
            itemIconColor: Colors.grey.withOpacity(0.5),
            itemTextStyle: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 14.0,
            ),
            selectedItemIconColor: Colors.white,
            selectedItemTextStyle: const TextStyle(
              color: Colors.white,
              fontSize: 12.0,
            ),
          ),
          mainActionButtonTheme: MainActionButtonTheme( size: 50, color: _color2, icon: Icon(Icons.keyboard_arrow_up, color: Colors.white, size: 32,)),
          onSelectItem: (index) => debugPrint('$index'),
          sheetChild:   GridView.count(
            crossAxisCount: 5,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.only(left: 15.0,top: 20.0,bottom: 20.0,right: 10),
            children: [
              _NotifyIconBadgerTile(
                  size: size,
                  notifyCount: '1',
                  notifyName: 'Leave',
                  notifyIcon: Icons.group_off,
                  iconColor: _color2,
                  onTap: (){}
              ),
              _NotifyIconBadgerTile(
                  size: size,
                  notifyCount: '0',
                  notifyName: 'PR',
                  notifyIcon: Icons.request_quote_outlined,
                  iconColor:_color2,
                  onTap: (){}
              ),
              _NotifyIconBadgerTile(
                  size: size,
                  notifyCount: '6',
                  notifyName: 'PO',
                  notifyIcon: Icons.shopping_cart_outlined,
                  iconColor: _color2,
                  onTap: (){}
              ),
              _NotifyIconBadgerTile(
                  size: size,
                  notifyCount: '2',
                  notifyName: 'POC',
                  notifyIcon: Icons.shopping_cart_outlined,
                  iconColor: _color2,
                  onTap: (){}
              ),

              _NotifyIconBadgerTile(
                  size: size,
                  notifyCount: '0',
                  notifyName: 'Projects',
                  notifyIcon: Icons.shopping_cart_outlined,
                  iconColor: _color2,
                  onTap: (){}
              ),

              _NotifyIconBadgerTile(
                  size: size,
                  notifyCount: '0',
                  notifyName: 'CTM',
                  notifyIcon: Icons.shopping_cart_outlined,
                  iconColor: _color2,
                  onTap: (){}
              ),


            ],
          ),
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
          border: Border.all(color: _color2 ),
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
                style:
                    const TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
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
                style:
                    const TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
              ),
            ],
          )
        ],
      ),
    );
  }
}

Widget productItem(int index, context) => Container(
      padding: const EdgeInsets.fromLTRB(12, 0, 6, 6),
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
              color: const Color(0xfff2652e),
              size: 22,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(menuList[index].title, style: const TextStyle(fontSize: 10.0)),
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
    Color _color2 = const Color(0xffFFA556);
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 50,
            //height: 70,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white,width: 1),
                borderRadius: BorderRadius.circular(10.0)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(notifyIcon,size: 24,color: iconColor),
                Text(notifyName,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: Colors.white,
                      // decoration: TextDecoration.underline,
                      fontSize: 10.0),),
              ],
            ),
          ),
          Positioned(
            top: -8,
            right: -1,
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