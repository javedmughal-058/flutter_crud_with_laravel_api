
import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';
import 'package:flutter_crud_with_laravel_api/views/Widgets/CustomTextField.dart';
import 'package:get/get.dart';


class USGBot extends StatefulWidget {
  const USGBot({Key? key}) : super(key: key);

  @override
  _USGBotState createState() => _USGBotState();
}

class _USGBotState extends State<USGBot> {

  final double _fontSize = 14.0;
  List<MessageModel> messages = [];

  bool _isListening = false;
  String _lastWords = '';
  String query = '';


  /// Each time to start a speech recognition session

  var helpList = ["leave", "balance", "absent", "approvals", "appraisals","objectives","policies","asset disposals","separations policy",
    "laptop computers policy", "salary disbursement", "code of conduct", "retirement", "attendance","internship","mobile phones","guidance notes","guidelines for action",
    "conflict", "job interview", "conveyance", "re-employment", "smoking","speak up","mobile phones","aso","management","subsidy","international","purchase","garments",
    "entertaining","hiring","anti fraud","performance","currency","weather","who is absent"
  ];


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    var mm = MessageModel();
    mm.code = 1;
    mm.message = "How can i help you sir?";
    mm.voice = "How can i help you sir";
    mm.widget = Text("How can i help you sir?", textAlign: TextAlign.center,
        style: TextStyle(fontSize: _fontSize));
    messages.insert(0, mm);


  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    messages.clear();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: Text('USG Bot',style: Theme.of(context).textTheme.subtitle1,),
              // centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Get.back();
                },
              ),
              centerTitle: true,
            ),
            body: Container(
              width: Get.width,
              height: Get.height,
              // padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Expanded(
                      child: ListView.builder(
                          reverse: true,
                          itemCount: messages.length,
                          itemBuilder: (context,index){
                            return Container(
                                padding: const EdgeInsets.only(right: 10,left: 10),
                                child: Row(
                                  mainAxisAlignment: messages[index].code==0?
                                  MainAxisAlignment.end:MainAxisAlignment.start,
                                  children: [
                                    messages[index].code==1?
                                    const CircleAvatar(
                                      radius: 18,
                                      backgroundColor: Colors.transparent,
                                      backgroundImage: AssetImage('assets/images/bot.png'),
                                    ):
                                    SizedBox(),

                                    messages[index].code==0?
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Bubble(
                                        showNip: true,
                                        nip: BubbleNip.rightBottom,
                                        color: Color.fromRGBO(195, 246, 202, 1.0),
                                        child: Text(messages[index].message!,
                                            textAlign: TextAlign.center, style: TextStyle(fontSize: _fontSize)),
                                        elevation: 0.0,
                                        radius: Radius.circular(15),
                                      ),
                                    ):
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Bubble(

                                        showNip: true,
                                        nip: BubbleNip.leftBottom,
                                        color:Theme.of(context).primaryColor.withOpacity(0.2),
                                        child: messages[index].widget,
                                        elevation: 0.0,
                                        radius: Radius.circular(15),
                                      ),
                                    ),

                                    messages[index].code==0?
                                    Container(
                                      height: 30,
                                      width: 30,
                                      child: CircleAvatar(
                                        // backgroundColor: Colors.green,
                                        backgroundImage: AssetImage('assets/images/bot.png')
                                      ),
                                    ):
                                    SizedBox()
                                  ],
                                )
                            );
                          }
                      )
                  ),

                  const Divider(),

                  Container(
                    child: ListTile(
                      dense: true,
                      title: CustomTextField(
                        borderColor: Theme.of(context).primaryColor,
                        // controller: _userController.messageInputText,
                        textInputType: TextInputType.text,
                        isReadOnly: false,
                        hint: 'write something here...',
                        borderRadius: 25.0,
                        suffixIcon: IconButton(
                            onPressed: (){
                              // if(_userController.messageInputText.text.isEmpty){
                              //   print('Empty');
                              // }else{
                              //   query = _userController.messageInputText.text;
                              //   var mm = MessageModel();
                              //   mm.code = 0;
                              //   mm.message = query;
                              //   messages.insert(0, mm);
                              //   _userController.messageInputText.clear();
                              //   FocusScope.of(context).unfocus();
                              //   messageResponse();
                              // }
                            },
                            icon: Icon(Icons.send,color: Theme.of(context).primaryColor,size: 25.0,)),
                      ),
                      trailing: IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.mic_off,
                            color: Theme.of(context).primaryColor,size: 25.0,)),
                    ),
                  )

                ],
              ),
            )
        ),
                ),
    );
  }
}


class MessageModel{
  int? code;
  String? message;
  String? voice;
  Widget? widget;

  MessageModel({ this.code, this.message,this.voice,this.widget});
}