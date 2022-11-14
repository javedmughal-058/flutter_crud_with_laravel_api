import 'package:flutter/material.dart';
import 'package:flutter_crud_with_laravel_api/controllers/UserController.dart';
import 'package:flutter_crud_with_laravel_api/models/MenuModel.dart';
import 'package:get/get.dart';
import 'package:toast/toast.dart';


class LeaveApply extends StatefulWidget {
  const LeaveApply({Key? key}) : super(key: key);

  @override
  State<LeaveApply> createState() => _LeaveApplyState();
}

class _LeaveApplyState extends State<LeaveApply> {
  String pressedIndex = '';


  @override
  Widget build(BuildContext context) {
    ToastContext().init(context);

    final size = MediaQuery.of(context).size;
    final UserController _userController = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: const Text('ESS'),
      ),
      body: SingleChildScrollView(
        child: Column(
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
            const Text('Attendance Summary',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black)),
            Container(
              padding: const EdgeInsets.all(6),
              margin: const EdgeInsets.fromLTRB(12, 4, 12, 0),
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
            // GestureDetector(
            //   onLongPress: () {
            //     essMenu[0].fav = !essMenu[0].fav;
            //     _userController.addedFav.value = essMenu[0].fav;
            //     print("long pressed");
            //     if (_userController.favorites.contains(essMenu[0].count)) {
            //       _userController.removeFavorite(essMenu[0]);
            //     } else {
            //       _userController.addFavorite(essMenu[0]);
            //     }
            //   },
            //   child: ListTile(
            //     dense: true,
            //     contentPadding:
            //         const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
            //     visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
            //     leading:
            //         Icon(Icons.list_alt, color: Theme.of(context).primaryColor),
            //     title: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Text('My Work Desk',
            //             style: Theme.of(context).textTheme.subtitle2),
            //         Obx(
            //           () =>
            //               _userController.favorites.contains(essMenu[0].count)
            //                   ? const Icon(Icons.favorite,
            //                       size: 14, color: Colors.red)
            //                   : const SizedBox(),
            //         ),
            //       ],
            //     ),
            //     onTap: () {
            //       print("CLicked");
            //       // if(_menu.fav){
            //       //   _userController.isPressed.value=! _userController.isPressed.value;
            //       // }
            //       // else{
            //       //   print("CLicked");
            //       // }
            //     },
            //     trailing: Obx(
            //       () => Icon(
            //         _userController.lunchTab.value
            //             ? Icons.keyboard_arrow_down
            //             : Icons.arrow_forward_ios,
            //         size: 18,
            //         color: Theme.of(context).primaryColor.withOpacity(0.7),
            //       ),
            //     ),
            //   ),
            // ),
            // ListTile(
            //   dense: true,
            //   contentPadding:
            //       const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
            //   visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
            //   leading:
            //       Icon(Icons.approval, color: Theme.of(context).primaryColor),
            //   title: Text('Task Planner',
            //       style: Theme.of(context).textTheme.subtitle2),
            //   onTap: () {
            //     print("CLicked");
            //     // if(_menu.fav){
            //     //   _userController.isPressed.value=! _userController.isPressed.value;
            //     // }
            //     // else{
            //     //   print("CLicked");
            //     // }
            //   },
            //   trailing: Obx(
            //     () => Icon(
            //       _userController.lunchTab.value
            //           ? Icons.keyboard_arrow_down
            //           : Icons.arrow_forward_ios,
            //       size: 18,
            //       color: Theme.of(context).primaryColor.withOpacity(0.7),
            //     ),
            //   ),
            // ),
            // ListTile(
            //   dense: true,
            //   contentPadding:
            //       const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
            //   visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
            //   leading: Icon(Icons.time_to_leave,
            //       color: Theme.of(context).primaryColor),
            //   title: Text('Service Request',
            //       style: Theme.of(context).textTheme.subtitle2),
            //   onTap: () {
            //     print("CLicked");
            //     // if(_menu.fav){
            //     //   _userController.isPressed.value=! _userController.isPressed.value;
            //     // }
            //     // else{
            //     //   print("CLicked");
            //     // }
            //   },
            //   trailing: Obx(
            //     () => Icon(
            //       _userController.lunchTab.value
            //           ? Icons.keyboard_arrow_down
            //           : Icons.arrow_forward_ios,
            //       size: 18,
            //       color: Theme.of(context).primaryColor.withOpacity(0.7),
            //     ),
            //   ),
            // ),
            // ListTile(
            //   dense: true,
            //   contentPadding:
            //       const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
            //   visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
            //   leading: Icon(Icons.task, color: Theme.of(context).primaryColor),
            //   title: Text('Vehicle Requisition',
            //       style: Theme.of(context).textTheme.subtitle2),
            //   onTap: () {
            //     print("CLicked");
            //     // if(_menu.fav){
            //     //   _userController.isPressed.value=! _userController.isPressed.value;
            //     // }
            //     // else{
            //     //   print("CLicked");
            //     // }
            //   },
            //   trailing: Obx(
            //     () => Icon(
            //       _userController.lunchTab.value
            //           ? Icons.keyboard_arrow_down
            //           : Icons.arrow_forward_ios,
            //       size: 18,
            //       color: Theme.of(context).primaryColor.withOpacity(0.7),
            //     ),
            //   ),
            // ),
            // ListTile(
            //   dense: true,
            //   contentPadding:
            //       const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
            //   visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
            //   leading:
            //       Icon(Icons.list_alt, color: Theme.of(context).primaryColor),
            //   title: Text('Training Calender',
            //       style: Theme.of(context).textTheme.subtitle2),
            //   onTap: () {
            //     print("CLicked");
            //     // if(_menu.fav){
            //     //   _userController.isPressed.value=! _userController.isPressed.value;
            //     // }
            //     // else{
            //     //   print("CLicked");
            //     // }
            //   },
            //   trailing: Obx(
            //     () => Icon(
            //       _userController.lunchTab.value
            //           ? Icons.keyboard_arrow_down
            //           : Icons.arrow_forward_ios,
            //       size: 18,
            //       color: Theme.of(context).primaryColor.withOpacity(0.7),
            //     ),
            //   ),
            // ),
            // GestureDetector(
            //   onTap: (){
            //     _userController.showSub.value = !_userController.showSub.value;
            //   },
            //   onLongPress: () {
            //     if (essMenu[5].isSub == true) {
            //       print("Can't added to Fav");
            //     }
            //     else {
            //      essMenu[5].fav = !essMenu[5].fav;
            //      _userController.addedFav.value = essMenu[5].fav;
            //      print("long pressed");
            //      if (_userController.favorites.contains(essMenu[5].count)) {
            //        _userController.removeFavorite(essMenu[5]);
            //      } else {
            //        _userController.addFavorite(essMenu[5]);
            //      }
            //     }
            //   },
            //   child: ListTile(
            //     dense: true,
            //     contentPadding:
            //         const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
            //     visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
            //     leading:
            //         Icon(Icons.approval, color: Theme.of(context).primaryColor),
            //     title: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Text('Mess', style: Theme.of(context).textTheme.subtitle2),
            //         Obx(() => _userController.favorites.contains(essMenu[5].count) ? const Icon(Icons.favorite, size: 14, color: Colors.red)
            //                   : const SizedBox(),
            //         ),
            //       ],
            //     ),
            //     onTap: () {
            //       print("CLicked");
            //       _userController.showSub.value = !_userController.showSub.value;
            //       // if(_menu.fav){
            //       //   _userController.isPressed.value=! _userController.isPressed.value;
            //       // }
            //       // else{
            //       //   print("CLicked");
            //       // }
            //     },
            //     trailing: Obx(
            //       () => Icon(
            //         _userController.showSub.value
            //             ? Icons.keyboard_arrow_down
            //             : Icons.arrow_forward_ios,
            //         size: 18,
            //         color: Theme.of(context).primaryColor.withOpacity(0.7),
            //       ),
            //     ),
            //   ),
            // ),
            // Obx(() => _userController.showSub.value
            //     ? SizedBox(
            //         height: size.height*0.2,
            //         child: ListView.builder(
            //           padding: EdgeInsets.fromLTRB(30, 0, 10, 5),
            //             itemCount: messMenu.length,
            //             itemBuilder: (context, index) {
            //               final _menu = messMenu[index];
            //               return GestureDetector(
            //                 onLongPress: () {
            //                   _menu.fav = !_menu.fav;
            //                   _userController.addedFav.value = _menu.fav;
            //                   print("long pressed");
            //                   if (_userController.favorites
            //                       .contains(_menu.count)) {
            //                     _userController.removeFavorite(_menu);
            //                   } else {
            //                     _userController.addFavorite(_menu);
            //                   }
            //                 },
            //                 child: ListTile(
            //                   dense: true,
            //                   contentPadding: const EdgeInsets.symmetric(
            //                       horizontal: 4.0, vertical: 5.0),
            //                   visualDensity: const VisualDensity(
            //                       horizontal: 0, vertical: -4),
            //                   leading: Icon(_menu.icon,
            //                       color: Theme.of(context).primaryColor),
            //                   title: Row(
            //                     mainAxisAlignment:
            //                         MainAxisAlignment.spaceBetween,
            //                     children: [
            //                       Text(_menu.title,
            //                           style: Theme.of(context)
            //                               .textTheme
            //                               .subtitle2),
            //                       Obx(
            //                         () => _userController.favorites
            //                                 .contains(_menu.count)
            //                             ? const Icon(Icons.favorite,
            //                                 size: 14, color: Colors.red)
            //                             : const SizedBox(),
            //                       ),
            //                     ],
            //                   ),
            //                   onTap: () {
            //                     print("clicked");
            //                   },
            //                   // trailing: Icon(
            //                   //   Icons.arrow_forward_ios,
            //                   //   size: 18,
            //                   //   color: Theme.of(context)
            //                   //       .primaryColor
            //                   //       .withOpacity(0.7),
            //                   // ),
            //                 ),
            //               );
            //             }),
            //       )
            //     : const SizedBox()),
            // ListTile(
            //   dense: true,
            //   contentPadding:
            //       const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
            //   visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
            //   leading: Icon(Icons.time_to_leave,
            //       color: Theme.of(context).primaryColor),
            //   title: Text('Performance Management',
            //       style: Theme.of(context).textTheme.subtitle2),
            //   onTap: () {
            //     print("CLicked");
            //     // if(_menu.fav){
            //     //   _userController.isPressed.value=! _userController.isPressed.value;
            //     // }
            //     // else{
            //     //   print("CLicked");
            //     // }
            //   },
            //   trailing: Obx(
            //     () => Icon(
            //       _userController.lunchTab.value
            //           ? Icons.keyboard_arrow_down
            //           : Icons.arrow_forward_ios,
            //       size: 18,
            //       color: Theme.of(context).primaryColor.withOpacity(0.7),
            //     ),
            //   ),
            // ),
            // ListTile(
            //   dense: true,
            //   contentPadding:
            //       const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
            //   visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
            //   leading: Icon(Icons.task, color: Theme.of(context).primaryColor),
            //   title: Text('ESS', style: Theme.of(context).textTheme.subtitle2),
            //   onTap: () {
            //     print("CLicked");
            //     // if(_menu.fav){
            //     //   _userController.isPressed.value=! _userController.isPressed.value;
            //     // }
            //     // else{
            //     //   print("CLicked");
            //     // }
            //   },
            //   trailing: Obx(
            //     () => Icon(
            //       _userController.lunchTab.value
            //           ? Icons.keyboard_arrow_down
            //           : Icons.arrow_forward_ios,
            //       size: 18,
            //       color: Theme.of(context).primaryColor.withOpacity(0.7),
            //     ),
            //   ),
            // ),
            // ListTile(
            //   dense: true,
            //   contentPadding:
            //       const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
            //   visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
            //   leading:
            //       Icon(Icons.list_alt, color: Theme.of(context).primaryColor),
            //   title: Text('Car Polling',
            //       style: Theme.of(context).textTheme.subtitle2),
            //   onTap: () {
            //     print("CLicked");
            //     // if(_menu.fav){
            //     //   _userController.isPressed.value=! _userController.isPressed.value;
            //     // }
            //     // else{
            //     //   print("CLicked");
            //     // }
            //   },
            //   trailing: Obx(
            //     () => Icon(
            //       _userController.lunchTab.value
            //           ? Icons.keyboard_arrow_down
            //           : Icons.arrow_forward_ios,
            //       size: 18,
            //       color: Theme.of(context).primaryColor.withOpacity(0.7),
            //     ),
            //   ),
            // ),
            // ListTile(
            //   dense: true,
            //   contentPadding:
            //       const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
            //   visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
            //   leading:
            //       Icon(Icons.approval, color: Theme.of(context).primaryColor),
            //   title: Text('Sustainability',
            //       style: Theme.of(context).textTheme.subtitle2),
            //   onTap: () {
            //     print("CLicked");
            //     // if(_menu.fav){
            //     //   _userController.isPressed.value=! _userController.isPressed.value;
            //     // }
            //     // else{
            //     //   print("CLicked");
            //     // }
            //   },
            //   trailing: Obx(
            //     () => Icon(
            //       _userController.lunchTab.value
            //           ? Icons.keyboard_arrow_down
            //           : Icons.arrow_forward_ios,
            //       size: 18,
            //       color: Theme.of(context).primaryColor.withOpacity(0.7),
            //     ),
            //   ),
            // ),
            // ListTile(
            //   dense: true,
            //   contentPadding:
            //       const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
            //   visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
            //   leading: Icon(Icons.time_to_leave,
            //       color: Theme.of(context).primaryColor),
            //   title: Text('One HR Policies',
            //       style: Theme.of(context).textTheme.subtitle2),
            //   onTap: () {
            //     print("CLicked");
            //     // if(_menu.fav){
            //     //   _userController.isPressed.value=! _userController.isPressed.value;
            //     // }
            //     // else{
            //     //   print("CLicked");
            //     // }
            //   },
            //   trailing: Obx(
            //     () => Icon(
            //       _userController.lunchTab.value
            //           ? Icons.keyboard_arrow_down
            //           : Icons.arrow_forward_ios,
            //       size: 18,
            //       color: Theme.of(context).primaryColor.withOpacity(0.7),
            //     ),
            //   ),
            // ),
            // ListTile(
            //   dense: true,
            //   contentPadding:
            //       const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
            //   visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
            //   leading: Icon(Icons.task, color: Theme.of(context).primaryColor),
            //   title: Text('Garment Request',
            //       style: Theme.of(context).textTheme.subtitle2),
            //   onTap: () {
            //     print("CLicked");
            //     // if(_menu.fav){
            //     //   _userController.isPressed.value=! _userController.isPressed.value;
            //     // }
            //     // else{
            //     //   print("CLicked");
            //     // }
            //   },
            //   trailing: Obx(
            //     () => Icon(
            //       _userController.lunchTab.value
            //           ? Icons.keyboard_arrow_down
            //           : Icons.arrow_forward_ios,
            //       size: 18,
            //       color: Theme.of(context).primaryColor.withOpacity(0.7),
            //     ),
            //   ),
            // ),
            // ListTile(
            //   dense: true,
            //   contentPadding:
            //       const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
            //   visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
            //   leading:
            //       Icon(Icons.list_alt, color: Theme.of(context).primaryColor),
            //   title: Text('Q Connect',
            //       style: Theme.of(context).textTheme.subtitle2),
            //   onTap: () {
            //     print("CLicked");
            //     // if(_menu.fav){
            //     //   _userController.isPressed.value=! _userController.isPressed.value;
            //     // }
            //     // else{
            //     //   print("CLicked");
            //     // }
            //   },
            //   trailing: Obx(
            //     () => Icon(
            //       _userController.lunchTab.value
            //           ? Icons.keyboard_arrow_down
            //           : Icons.arrow_forward_ios,
            //       size: 18,
            //       color: Theme.of(context).primaryColor.withOpacity(0.7),
            //     ),
            //   ),
            // ),
            // ListTile(
            //   dense: true,
            //   contentPadding:
            //       const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
            //   visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
            //   leading:
            //       Icon(Icons.list_alt, color: Theme.of(context).primaryColor),
            //   title: Text('Sustainability Report',
            //       style: Theme.of(context).textTheme.subtitle2),
            //   onTap: () {
            //     print("CLicked");
            //     // if(_menu.fav){
            //     //   _userController.isPressed.value=! _userController.isPressed.value;
            //     // }
            //     // else{
            //     //   print("CLicked");
            //     // }
            //   },
            //   trailing: Obx(
            //     () => Icon(
            //       _userController.lunchTab.value
            //           ? Icons.keyboard_arrow_down
            //           : Icons.arrow_forward_ios,
            //       size: 18,
            //       color: Theme.of(context).primaryColor.withOpacity(0.7),
            //     ),
            //   ),
            // ),


            SizedBox(
              height: size.height,
              child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0, bottom: 0.0),
                  itemCount: essMenu.length,
                  itemBuilder: (context, index) {
                    final _menu = essMenu[index];
                    return  Container(
                      margin: const EdgeInsets.only(top: 2),
                      decoration:  _menu.isPressed? BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey),
                      ): const BoxDecoration(),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              // pressedIndex = '';
                              print("CLicked");
                              if(_menu.isSub==true){
                                // _userController.lunchTab.value =!_userController.lunchTab.value;
                                pressedIndex = index.toString();
                                if(pressedIndex == index.toString()){
                                  _menu.isPressed = !_menu.isPressed;
                                  // _userController.pressedIndex.add(_menu.isPressed);
                                }
                                print(pressedIndex);
                                print('dhfjsdfjdshf:::::::::'+index.toString());
                                setState(() {});
                              }


                              else{
                                Get.toNamed('/nextScreen');
                              }
                              // if(_menu.fav){
                              //   _userController.isPressed.value=! _userController.isPressed.value;
                              // }
                              // else{
                              //   print("CLicked");
                              // }
                            },
                            onLongPress: (){
                              if(_menu.isSub==true){
                                // Fluttertoast.showToast(
                                //     msg: "Can't added to fav",
                                //     toastLength: Toast.LENGTH_SHORT,
                                //     gravity: ToastGravity.CENTER,
                                //     timeInSecForIosWeb: 1,
                                //     backgroundColor: Colors.red,
                                //     textColor: Colors.white,
                                //     fontSize: 14.0
                                // );
                                showToast("This Item can't added to Fav", duration: Toast.lengthLong);

                              }
                              else{
                                _menu.fav = !_menu.fav;
                                _userController.addedFav.value = _menu.fav;
                                print("long pressed");
                                if (_userController.favorites
                                    .contains(_menu.count)) {
                                  _userController.removeFavorite(_menu);
                                } else {
                                  _userController.addFavorite(_menu);
                                }
                              }

                            },
                            child: ListTile(
                              dense: true,
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 12.0, vertical: 5.0),
                              visualDensity: const VisualDensity(
                                  horizontal: 0, vertical: -4),
                              leading: Icon(_menu.icon,
                                  color: Theme.of(context).primaryColor),
                              title: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(_menu.title,
                                      style: Theme.of(context).textTheme.subtitle2),
                                  Obx(
                                        () => _userController.favorites
                                        .contains(_menu.count)
                                        ? const Icon(Icons.favorite,
                                        size: 14, color: Colors.red)
                                        : const SizedBox(),
                                  ),
                                ],
                              ),
                              trailing: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(color: Theme.of(context).primaryColor),
                                color: Theme.of(context).primaryColor,
                                ),
                                child: Icon(
                                  _menu.isPressed
                                        ? Icons.keyboard_arrow_down_outlined
                                        : Icons.arrow_forward_ios,
                                    size: 16,
                                    color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                         _menu.isPressed
                              ? SizedBox(
                                height: size.height*0.2,
                                child: ListView.builder(
                                    padding: const EdgeInsets.fromLTRB(30, 0, 10, 5),
                                    itemCount: messMenu.length,
                                    itemBuilder: (context, index) {
                                      final _menu = messMenu[index];
                                      return GestureDetector(
                                        onTap: (){},
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
                                          contentPadding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 5.0),
                                          visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                                          leading: Icon(_menu.icon, color: Theme.of(context).primaryColor.withOpacity(0.7)),
                                          title: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(_menu.title, style: const TextStyle(color: Colors.black87)),
                                              Obx(
                                                    () => _userController.favorites
                                                    .contains(_menu.count)
                                                    ? const Icon(Icons.favorite,
                                                    size: 14, color: Colors.red)
                                                    : const SizedBox(),
                                              ),
                                            ],
                                          ),
                                          // trailing: Icon(
                                          //   Icons.arrow_forward_ios,
                                          //   size: 18,
                                          //   color: Theme.of(context)
                                          //       .primaryColor
                                          //       .withOpacity(0.7),
                                          // ),
                                        ),
                                      );
                                    }),
                          )
                              : const SizedBox()
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );

  }
  void showToast(String msg, {int? duration, int? gravity}) {
    Toast.show(msg, duration: duration, gravity: gravity);
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
