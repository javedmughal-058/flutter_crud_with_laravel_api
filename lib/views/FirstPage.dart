import 'package:flutter/material.dart';
import 'package:flutter_crud_with_laravel_api/controllers/UserController.dart';
import 'package:get/get.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final UserController userController = Get.find();
    int indexValue=0;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,elevation: 0.0,
          leading: IconButton(
              onPressed: (){},
              icon: const Icon(Icons.arrow_back_ios, color: Colors.indigo, size: 16,)),
          title: const Text("Flutter with Laravel APIs", style: TextStyle(color: Colors.black, fontSize: 16),),

        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 2, 10, 0),
                child: TextFormField(
                  controller: userController.name,
                  decoration: const InputDecoration(
                    label: Text('Name'),
                  ),
                  style: const TextStyle(color: Colors.black),

                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 2, 10, 0),
                child: TextFormField(
                  controller: userController.email,
                  decoration: const InputDecoration(
                    label: Text('Email'),
                  ),
                  style: const TextStyle(color: Colors.black),

                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    if(userController.isUpdate.value){
                      userController.updateRecord(id: userController.getData[indexValue].id.toString(), username: userController.name.text, email: userController.email.text);
                      print(userController.getData[indexValue].id.toString());
                      print(userController.name.text);
                      print(userController.email.text);
                    }
                    else{
                      userController.addRecord(username: userController.name.text, email: userController.email.text);
                    }
                      }, child: Obx(()=>Text( userController.isUpdate.value ? 'update':'Save')),
                  ),

                  ElevatedButton(
                      onPressed: (){
                        userController.getRecord();
                        },
                      child: const Text('View')),
                ],
              ),
              Obx(()=>ListView.builder(
                  padding: const EdgeInsets.all(5),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: userController.getData.length,
                  itemBuilder: (context, index){
                    return Container(
                      margin: const EdgeInsets.all(4),
                      padding: const EdgeInsets.only(left: 4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            style: BorderStyle.solid,
                            width: 1,
                            color: Colors.grey,
                          )),
                      child: Row(
                        children:[
                          Column(
                            children:  [
                              Text(userController.getData[index].stdname== null ?" ":userController.getData[index].stdname.toString() ),
                              Text(userController.getData[index].email== null ?" ":userController.getData[index].email.toString()),
                            ],
                          ),
                          const Spacer(),
                          IconButton(onPressed: (){
                            userController.isUpdate.value = true;
                            userController.editData(index);
                            //print(index);
                            indexValue = index;

                          }, icon: const Icon(Icons.edit, color: Colors.green,)),
                          IconButton(onPressed: (){
                            userController.deleteRecord(userController.getData[index].id.toString());
                            userController.getRecord();
                          }, icon: const Icon(Icons.delete, color: Colors.red,)),


                        ],
                      ),
                    );
                  })),
            ],
          ),
        ),
      ),
    );
  }
}
