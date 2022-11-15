import 'package:flutter/material.dart';
import 'package:flutter_crud_with_laravel_api/controllers/UserController.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';


class CurrencyPage extends StatefulWidget {
  CurrencyPage({Key? key,}) : super(key: key);

  @override
  State<CurrencyPage> createState() => _CurrencyPageState();
}

class _CurrencyPageState extends State<CurrencyPage> {
  final UserController userController = Get.find();

  @override
  void initState() {
    super.initState();
    userController.getCurrencyData().then((value) {});
  }

  @override
  Widget build(BuildContext context) {
    return Obx(()=> userController.currencyRate.isNotEmpty?
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('USD Currency Rate ', style:  TextStyle(fontWeight: FontWeight.w800,)),
            Align(
              alignment: Alignment.topRight,
              child: Text("Date: ${DateFormat('dd-MMM-yyyy').format(DateTime.parse(userController.currencyDate.toString()))}",
                  style: const TextStyle( fontSize: 12,fontWeight: FontWeight.w300,)),
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 20),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Text('Currency', style: TextStyle(fontWeight: FontWeight.w800)),
            //       Text('Rate', style: TextStyle(fontWeight: FontWeight.w800)),
            //     ],
            //   ),
            // ),
            Expanded(
              child: ListView.builder(
                // padding: EdgeInsets.fromLTRB(2, 0, 2, 2),
                  shrinkWrap: true,
                  itemCount: userController.currencyRate.length,
                  itemBuilder: (context, index){
                    var currencyKey = userController.currencyRate.entries.toList();
                    var currencyValue= userController.currencyRate.values.toList();
                    return Container(
                      margin: EdgeInsets.fromLTRB(10, 5, 12, 4),
                      padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(width: 1.7, color: Theme.of(context).primaryColor),
                          // right: BorderSide(width: 1.7, color: Theme.of(context).primaryColor),
                          bottom: BorderSide(width: 0.8, color: Colors.grey.shade300),
                          // bottom: BorderSide(width: 16.0, color: Colors.lightBlue.shade900),
                        ),
                        color: Colors.white,


                        // // color: Colors.white,
                        //   boxShadow: [
                        //     BoxShadow(
                        //       color: Colors.grey.withOpacity(0.2),
                        //       spreadRadius: 1,
                        //       blurRadius: 1,
                        //       offset: const Offset(3,1), // changes position of shadow
                        //     ),
                        //   ],
                        // borderRadius: BorderRadius.circular(6),
                        // border: Border.all(color: Colors.grey),

                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text('${1+index}. ', style: TextStyle(fontSize: 11),),
                              const SizedBox(width: 5,),
                              Text(currencyKey[index].key, style: TextStyle(fontWeight: FontWeight.w700),),
                            ],
                          ),
                          Text(currencyValue[index].toString(), style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black54),),
                        ],
                      ),
                    );
                  }),),

          ],
        ),
      ):
      Center(
          child: CircularProgressIndicator(color: Theme.of(context).primaryColor, backgroundColor: Colors.green, strokeWidth: 2,))
    );
  }
}
