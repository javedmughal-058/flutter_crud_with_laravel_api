import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud_with_laravel_api/models/MenuModel.dart';
import 'package:get/get.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
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
    Color _color = const Color.fromRGBO(21, 145, 252, 1.0);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,elevation: 0.0,
          leading: IconButton(
              onPressed: (){},
              icon: Icon(Icons.menu, color:_color, size: 16,)),
              title: Text("USG", style: TextStyle(color: _color, fontSize: 16),),
          actions: [
            IconButton(
                onPressed: (){},
                icon: Icon(Icons.notifications, color: _color, size: 20,)),

          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
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
                    decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30.0)),
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
                                margin: const EdgeInsets.symmetric(horizontal: 0),
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
                    bottom:10,
                    left: Get.width*0.35,

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imgList.asMap().entries.map((entry) {
                        return GestureDetector(
                          onTap: () => _controller.animateToPage(entry.key),
                          child: Container(
                            width: 12.0,
                            height: 12.0,
                            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: (Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.white).withOpacity(_carouselIndex == entry.key ? 0.9 : 0.4)),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  Positioned(
                      top: 80.0,
                      left: Get.width*0.3,
                      child: Column(
                        children: [
                          const Text('APPAREL',style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold)),
                          Text('Quality From Fit To Finish',style: TextStyle(color: Colors.white, fontSize: 14,)),
                        ],
                      ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              const SizedBox(height: 5,),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 10,),
                  Text('Text', style: Theme.of(context).textTheme.bodyText1,),
                  const Spacer(),
                  Text('View All',style: Theme.of(context).textTheme.bodyText1,),
                  const SizedBox(width: 10,),
                ],
              ),
              Container(
                margin: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Colors.white,
                  //border: Border.all(color: Colors.black45,width: 1),
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade400,
                        blurRadius: 5.0,
                        offset: Offset(1,2)
                    ),
                  ],
                  // gradient: LinearGradient(
                  //     colors: [
                  //       // Colors.white,
                  //       _color.withOpacity(0.1),
                  //       Colors.white
                  //     ],
                  //     begin: Alignment.topCenter,
                  //     end: AlignmentDirectional.bottomCenter
                  // )
                ),
                child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 6,
                      childAspectRatio: 1.0,
                      mainAxisSpacing: 8.0,
                      crossAxisSpacing: 8.0,
                    ),
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                   padding: const EdgeInsets.only(left: 4.0,top: 8.0,right: 8.0,bottom: 2.0),
                    itemCount: menuList.length,
                    itemBuilder: (context,index){
                      final menu = menuList[index];
                      return GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushNamed(menu.route);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                              border: Border.all(color: _color.withOpacity(0.1),width: 1),
                              borderRadius: BorderRadius.circular(8.0),

                              // boxShadow: [
                              //   BoxShadow(
                              //       color: Colors.grey.shade400,
                              //       blurRadius: 5.0,
                              //       offset: Offset(1,2)
                              //   ),
                              // ],
                              // gradient: LinearGradient(
                              //     colors: [
                              //       menu.color.withOpacity(0.3),
                              //       menu.color,
                              //     ],
                              //     begin: Alignment.topCenter,
                              //     end: AlignmentDirectional.bottomCenter
                              // )
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(menu.icon,color: _color,size: 14,),
                              const SizedBox(height: 5,),
                              Text(menu.title,
                                  style: const TextStyle(fontSize: 8.0)),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
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
  const _CustomBalanceCard({Key? key,
    required this.icon,required this.entitled,required this.availed,
    required this.leaveName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color _color = const Color.fromRGBO(21, 145, 252, 1.0);
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: _color.withOpacity(0.03),
        border: Border.all(color: _color.withOpacity(0.5),),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(icon,color: _color,),
              Text(leaveName),
            ],
          ),
          Divider(color: _color),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Entitled'),
              Text(entitled,
                style: TextStyle(color: _color,fontWeight: FontWeight.w500),),
            ],
          ),
          Divider(color: _color),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Availed'),
              Text(availed,
                style: TextStyle(color: _color,fontWeight: FontWeight.w500),),
            ],
          )
        ],
      ),
    );
  }
}
