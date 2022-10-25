import 'package:flutter/material.dart';
import 'package:flutter_crud_with_laravel_api/controllers/UserController.dart';
import 'package:get/get.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final UserController userController = Get.find();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,elevation: 0.0,
          leading: IconButton(
              onPressed: (){},
              icon: const Icon(Icons.arrow_back_ios, color: Colors.indigo, size: 16,)),
          title: const Text("Flutter with Laravel Api", style: TextStyle(color: Colors.black, fontSize: 16),),

        ),
        body: Column(
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
            ElevatedButton(onPressed: (){

            }, child: const Text('Save')),
          ],
        ),
      ),
    );
  }
}
