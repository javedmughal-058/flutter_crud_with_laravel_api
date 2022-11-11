import 'package:flutter/material.dart';
import 'package:flutter_crud_with_laravel_api/controllers/UserController.dart';
import 'package:flutter_crud_with_laravel_api/models/MenuModel.dart';
import 'package:get/get.dart';

class LeaveApply extends StatefulWidget {
  const LeaveApply({Key? key}) : super(key: key);

  @override
  State<LeaveApply> createState() => _LeaveApplyState();
}

class _LeaveApplyState extends State<LeaveApply> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final UserController _userController = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: const Text('ESS'),
      ),
      body: Column(
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
            child: ListView.builder(
                // scrollDirection: Axis.horizontal,
                // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                //   crossAxisCount: 3,
                //   childAspectRatio: 1.0,
                //   mainAxisSpacing: 8.0,
                //   crossAxisSpacing: 8.0,
                // ),
                physics: const AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0, bottom: 0.0),
                itemCount: essMenu.length,
                itemBuilder: (context, index) {
                  final _menu = essMenu[index];
                  return  Column(
                    children: [
                      ListTile(
                        dense: true,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 5.0),
                        visualDensity: const VisualDensity(
                            horizontal: 0, vertical: -4),
                        leading: Icon(_menu.icon,
                            color: Theme.of(context).primaryColor),
                        title: Text(_menu.title,
                            style: Theme.of(context).textTheme.subtitle2),
                        onTap: () {
                          print("CLicked");
                           if(_menu.fav){
                             _userController.isPressed.value=! _userController.isPressed.value;
                           }
                           else{
                             print("CLicked");
                           }
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
                      Obx(()=>_userController.isPressed.value? Container(
                          width: 50,
                          height: 50,
                          color: Colors.red):
                      const SizedBox()),
                    ],
                  );
                }),
          ),
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

