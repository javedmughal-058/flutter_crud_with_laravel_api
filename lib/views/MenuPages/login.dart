import 'package:flutter/material.dart';
import 'package:flutter_crud_with_laravel_api/views/StartPage.dart';
import 'package:get/get.dart';
class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Stack(
          children: [
            Row(
              children:[
                Container(
                  width: MediaQuery.of(context).size.width/2,
                  decoration: const BoxDecoration(
                    color: Colors.indigo,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width/2,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(30),
              //width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // const SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 20, 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(onPressed: (){
                          Get.back();
                        }, icon: const Icon(Icons.arrow_back_ios)),
                        const Text("Login", style: TextStyle(fontSize: 40),),
                        const SizedBox(height: 5,),
                        const Text("Welcome Back", style: TextStyle(fontSize: 18),),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 5, 20, 10),
                        child: Column(
                          children:[
                            const SizedBox(height: 10,),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                        color:  Color.fromRGBO(225, 95, 27, .3),
                                        blurRadius: 20,
                                        offset:  Offset(0, 10)
                                    )]
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: const BoxDecoration(
                                        border: Border(bottom: BorderSide(color: Colors.grey))
                                    ),
                                    child: const TextField(
                                      decoration: InputDecoration(
                                          hintText: "Email or Phone number",
                                          hintStyle: TextStyle(color: Colors.grey),
                                          border: InputBorder.none
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: const BoxDecoration(
                                        border: Border(bottom: BorderSide(color: Colors.grey))
                                    ),
                                    child: const TextField(
                                      decoration: InputDecoration(
                                          hintText: "Password",
                                          hintStyle:  TextStyle(color: Colors.grey),
                                          border: InputBorder.none
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 15,),
                            GestureDetector(
                              onTap: (){},
                              child: const Text("Forgot Password?",
                                style:  TextStyle(
                                    color: Colors.grey,
                                    fontStyle: FontStyle.italic,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.black
                                ),),
                            ),
                            const SizedBox(height: 15,),
                            GestureDetector(
                              onTap: (){
                                Get.to(const StartPage());
                              },
                              child: Container(
                                height: 50,
                                margin: const EdgeInsets.symmetric(horizontal: 50),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    gradient: const LinearGradient(
                                        begin: Alignment.topCenter,
                                        colors: [
                                          Colors.blue,
                                          Colors.indigo,
                                        ]
                                    )
                                ),
                                child: const Center(
                                  child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                ),
                              ),
                            ),
                            const SizedBox(height: 15,),
                            const Text("Continue with", style: TextStyle(color: Colors.grey),),
                            const SizedBox(height: 15,),
                            Row(
                              children:[
                                Expanded(
                                  child: Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.white,
                                        border: Border.all(width: 1, color: Colors.blue)
                                    ),
                                    child: Image.asset('assets/images/bot2.png',),
                                  ),
                                ),
                                const SizedBox(width: 30,),
                                Expanded(
                                  child: Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.black
                                    ),
                                    child: const Center(
                                      child:  Text("Github", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}