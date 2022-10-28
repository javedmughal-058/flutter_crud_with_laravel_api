import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color _color3 = const Color(0xff009b9a);

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(4,0, 4, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: (){
                          Get.back();
                        },
                        icon: Icon(Icons.arrow_back_ios, color:_color3, size: 22,)),
                    const Spacer(),
                    GestureDetector(
                      onTap: (){
                        Get.toNamed('/usgbot');

                      },
                      child: const CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('assets/images/bot1.png'),
                      ),
                    ),
                    const SizedBox(width: 10,),
                  ],
                ),
                Text('Welcome', style: TextStyle(color: _color3, fontSize: 32)),
                Row(

                  children: [
                    Text('USG Smart Office', style: Theme.of(context).textTheme.bodyMedium,),
                    const Spacer(),
                    Text('Version: 4.25', style: TextStyle(color: _color3, fontSize: 14)),
                    const SizedBox(width: 10,),
                  ],
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(15, 5, 15, 10),
                  height: MediaQuery.of(context).size.height*0.15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: _color3,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(width: 10,),
                      const CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('assets/images/slider1.jpg'),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Hafiz Mustanser Ahmed', style: Theme.of(context).textTheme.bodyMedium,),
                          Text('CEO New Ventures', style: Theme.of(context).textTheme.bodyMedium,),
                          Text('+923001234567', style: Theme.of(context).textTheme.bodyMedium,),

                        ],
                      ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios, color: Colors.white,))
                    ],
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home_outlined,color: Theme.of(context).primaryColor.withOpacity(0.7),),
                  title: Text('Home',style: Theme.of(context).textTheme.subtitle2),
                  onTap: (){
                    Navigator.of(context).pushNamed("/home");
                  },
                  trailing: Icon(Icons.arrow_forward_ios,size:18,color: Theme.of(context).primaryColor.withOpacity(0.7),),
                ),
                ListTile(
                  leading: Icon(Icons.approval_outlined,color: Theme.of(context).primaryColor.withOpacity(0.7),),
                  title: Text('Decision Support',style: Theme.of(context).textTheme.subtitle2),
                  trailing: Icon(Icons.arrow_forward_ios,size:18,color: Theme.of(context).primaryColor.withOpacity(0.7),),

                  onTap: (){
                    Navigator.of(context).pushNamed("/dss_notifs");
                  },
                ),
                ListTile(
                  leading: Icon(Icons.check_circle_outline,color: Theme.of(context).primaryColor.withOpacity(0.7),),
                  title: Text('Approvals',style: Theme.of(context).textTheme.subtitle2),
                  trailing: Icon(Icons.arrow_forward_ios,size:18,color: Theme.of(context).primaryColor.withOpacity(0.7),),

                  onTap: (){
                    Navigator.of(context).pushNamed("/dss_notifs");
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings_outlined,color: Theme.of(context).primaryColor.withOpacity(0.7),),
                  title: Text('Settings',style: Theme.of(context).textTheme.subtitle2),
                  trailing: Icon(Icons.arrow_forward_ios,size:18,color: Theme.of(context).primaryColor.withOpacity(0.7),),

                  onTap: (){
                    Navigator.of(context).pushNamed("/settings");
                  },
                ),
                ListTile(
                  leading: Icon(Icons.info_outlined,color: Theme.of(context).primaryColor.withOpacity(0.7),),
                  title: Text('About US',style: Theme.of(context).textTheme.subtitle2),
                  trailing: Icon(Icons.arrow_forward_ios,size:18,color: Theme.of(context).primaryColor.withOpacity(0.7),),
                  onTap: (){
                    Navigator.of(context).pushNamed("/about_us");

                  },
                ),
                const Divider(),
                // ListTile(
                //   leading:  const CircleAvatar(
                //     backgroundColor: Colors.white,
                //     backgroundImage: AssetImage('assets/images/bot1.png'),
                //   ),
                //   title: Text('USG Bot',style: Theme.of(context).textTheme.subtitle2),
                //   trailing: Icon(Icons.arrow_forward_ios,size:18,color: Theme.of(context).primaryColor.withOpacity(0.7),),
                //   onTap: (){
                //     Navigator.of(context).pushNamed("/usg_bot");
                //   },
                // ),
                ListTile(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Theme.of(context).primaryColor),
                    borderRadius: BorderRadius.circular(12), //<-- SEE HERE
                  ),
                  tileColor: Theme.of(context).primaryColor.withOpacity(0.3),
                  //leading: const Icon(Icons.logout,color: Colors.black26,),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.logout,color: Colors.black26,),
                      const SizedBox(width: 10,),
                      Text('Logout',style: Theme.of(context).textTheme.subtitle2, textAlign: TextAlign.center),
                    ],
                  ),
                  dense: true,
                  visualDensity: const VisualDensity(vertical: 0),

                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}
