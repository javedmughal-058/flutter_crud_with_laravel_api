import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color _colorwhite =const Color(0xffffffff);
    Color _color3 =Theme.of(context).primaryColor;
    Color _color4 = const Color(0xfff2652e);

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(4,0, 4, 4),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: (){
                          Get.back();
                        },
                        icon: Icon(Icons.arrow_back_ios, color:Theme.of(context).primaryColor, size: 22,)),
                    Text('USG Smart Office', style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 16)),
                    const Spacer(),
                    GestureDetector(
                      onTap: (){
                        Get.toNamed('/usgbot');

                      },
                      child: Lottie.asset('assets/animation/bot.json', height: 50, width: 60),
                    ),
                    const SizedBox(width: 5,),
                  ],
                ),

                Container(
                  margin: const EdgeInsets.fromLTRB(12, 0, 12, 10),
                  height: MediaQuery.of(context).size.height*0.15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 8,),
                      const CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('assets/images/slider1.jpg'),
                      ),
                      const SizedBox(width: 5,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('UsmanRiaz', style: TextStyle(color: _colorwhite),),
                          SizedBox(
                              width: 240,
                              child: Text('Senior Assistant Manager mnager assistan', style: TextStyle(color: _colorwhite),)),
                          Text('+923001234567', style: TextStyle(color: _colorwhite),),

                        ],
                      ),
                      //IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios, color: Colors.white,))
                    ],
                  ),
                ),
                ListTile(
                  dense: true,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
                  visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                  leading: Icon(Icons.home_outlined,color: _color3.withOpacity(0.5)),
                  title: Text('Home',style: Theme.of(context).textTheme.subtitle2),
                  onTap: (){
                    Navigator.of(context).pushNamed("/home");
                  },
                  trailing: Icon(Icons.arrow_forward_ios,size:18,color: Theme.of(context).primaryColor.withOpacity(0.7),),
                ),
                ListTile(
                  dense: true,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
                  visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                  leading: Icon(Icons.approval_outlined,color: _color3.withOpacity(0.5)),
                  title: Text('Decision Support',style: Theme.of(context).textTheme.subtitle2),
                  trailing: Icon(Icons.arrow_forward_ios,size:18,color: Theme.of(context).primaryColor.withOpacity(0.7),),

                  onTap: (){
                    Navigator.of(context).pushNamed("/dss_notifs");
                  },
                ),
                ListTile(
                  dense: true,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
                  visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                  leading: Icon(Icons.check_circle_outline,color: _color3.withOpacity(0.5)),
                  title: Text('Approvals',style: Theme.of(context).textTheme.subtitle2),
                  trailing: Icon(Icons.arrow_forward_ios,size:18,color: Theme.of(context).primaryColor.withOpacity(0.7),),

                  onTap: (){
                    Navigator.of(context).pushNamed("/dss_notifs");
                  },
                ),
                ListTile(
                  dense: true,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
                  visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                  leading: Icon(Icons.policy_outlined,color: _color3.withOpacity(0.5)),
                  title: Text('Policy',style: Theme.of(context).textTheme.subtitle2),
                  trailing: Icon(Icons.arrow_forward_ios,size:18,color: Theme.of(context).primaryColor.withOpacity(0.7),),
                  onTap: (){
                    Navigator.of(context).pushNamed("/policies");

                  },
                ),
                ListTile(
                  dense: true,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
                  visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                  leading: Icon(Icons.settings_outlined,color: _color3.withOpacity(0.5)),
                  title: Text('Settings',style: Theme.of(context).textTheme.subtitle2),
                  trailing: Icon(Icons.arrow_forward_ios,size:18,color: Theme.of(context).primaryColor.withOpacity(0.7),),

                  onTap: (){
                    Navigator.of(context).pushNamed("/settings");
                  },
                ),
                ListTile(
                  dense: true,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
                  visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                  leading: Icon(Icons.info_outlined,color: _color3.withOpacity(0.5)),
                  title: Text('About US',style: Theme.of(context).textTheme.subtitle2),
                  trailing: Icon(Icons.arrow_forward_ios,size:18,color: Theme.of(context).primaryColor.withOpacity(0.7),),
                  onTap: (){
                    Navigator.of(context).pushNamed("/about_us");

                  },
                ),
                // Padding(
                //   padding: const EdgeInsets.fromLTRB(15, 2, 15, 0),
                //   child: Divider(color: Theme.of(context).primaryColor.withOpacity(0.5)),
                // ),
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
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Theme.of(context).primaryColor),
                      borderRadius: BorderRadius.circular(12), //<-- SEE HERE
                    ),
                    tileColor: Colors.white,
                    //leading: const Icon(Icons.logout,color: Colors.black26,),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.logout,color: _color3,),
                        const SizedBox(width: 10,),
                        Text('Logout',style: Theme.of(context).textTheme.subtitle2, textAlign: TextAlign.center),
                      ],
                    ),
                    dense: true,
                    visualDensity: const VisualDensity(vertical: 0),

                  ),
                ),
                const SizedBox(height: 10,),
                Text('Version: 4.25', style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 14)),
              ],
            ),
          ),
        )
      ),
    );
  }
}
