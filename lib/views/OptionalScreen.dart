import 'package:flutter/material.dart';
import 'package:flutter_crud_with_laravel_api/models/MenuModel.dart';

class OptionalScreen extends StatelessWidget {
  const OptionalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 1,
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
          ),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: const EdgeInsets.only(left: 4.0,top: 8.0,right: 8.0,bottom: 8.0),
          itemCount: menuList.length,
          itemBuilder: (context,index){
            final menu = menuList[index];
            return GestureDetector(
              onTap: (){
                Navigator.of(context).pushNamed(menu.route);
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Theme.of(context).primaryColor, width: 1),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(menu.icon,color: menu.color,size: 24,),
                    const SizedBox(height: 5,),
                    Text(menu.title,
                        style: const TextStyle(fontSize: 10.0)),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
