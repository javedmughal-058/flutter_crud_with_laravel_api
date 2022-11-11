import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_crud_with_laravel_api/config/api_services.dart';
import 'package:flutter_crud_with_laravel_api/models/MenuModel.dart';
import 'package:flutter_crud_with_laravel_api/models/showRecordModel.dart';
import 'package:flutter_crud_with_laravel_api/views/BottomPages/Currency.dart';
import 'package:flutter_crud_with_laravel_api/views/BottomPages/Setting.dart';
import 'package:flutter_crud_with_laravel_api/views/BottomPages/Team.dart';
import 'package:flutter_crud_with_laravel_api/views/StartPage.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_animations/simple_animations.dart';

class UserController extends GetxController{
  var currentIndex = 0.obs;
  final screens = [
    const StartPage(),
    const Currency(),
    const Setting(),
    const Team(),
  ];

  var isUpdate = false.obs;
  var recordIndex =0.obs;
  var updateName ="".obs;
  var updatedEmail ="".obs;
  var newFavList = [].obs;
  var addedFav = false.obs;
  var EssTabIndex = 0.obs;
  var lunchTab = false.obs;

  String apiUrl = 'http://127.0.0.1:8000/api/';
  ApiService apiService =  ApiService();
  late TextEditingController name;
  late TextEditingController email;
  var setFav =false.obs;
  var favorites = [].obs;
  var getData = <Result>[].obs;

  var favoritesmenu = <MenuModel>[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    name = TextEditingController();
    email = TextEditingController();

  }


  Future<void> updateValue() async{
    lunchTab.value = !lunchTab.value;
  }
// Future<bool> favourite(int index)async {
//   print("$index ${menu[index].fav}");
//   setFav.value=!setFav.value;
//   menu[index].fav =setFav.value;
//   return menu[index].fav;
//
//
// }

  Future<void> addRecord({required String username,required String email})async{
    var url = 'add_record';
    var body = {
      "name": username,
      "email": email,
    };
    try{
      await apiService.postData(apiUrl: url, body: body).then((response) async {
        // var data = jsonDecode(response.body);

      });
    } catch (error){
      print('Added Error: '+error.toString());
    }
  }
  Future<void> getRecord()async{
    var url = 'showRecord';
    var body = {

    };
    try{
      await apiService.postData(apiUrl: url, body: body).then((response) async {
        var data = showRecordFromJson(response.body);
        if(response.statusCode == 200){
          getData.value = data.result ?? [];

        }


      });
    } catch (error){
      print('Added Error: '+error.toString());
    }
  }
  Future<void> deleteRecord(String id)async{
    var url = 'delete_record';
    var body = {
      "id":id
    };
    try{
      await apiService.postData(apiUrl: url, body: body).then((response) async {
        if(response.statusCode == 200){
          print('Deleted');
        }


      });
    } catch (error){
      print('Deleted Error: '+error.toString());
    }
  }

  Future<void> editData(int index) async{
    name.text = getData[index].stdname.toString();
    email.text = getData[index].email.toString();
    // recordIndex.value = index;
    // updateName.value = name.text;
    // updatedEmail.value = email.text;

  }
  Future<void> updateRecord({required String id, required String username,required String email})async{
    var url = 'update_record';
    var body = {
      "id":id,
      "name": username,
      "email":email,
    };
    try{
      await apiService.postData(apiUrl: url, body: body).then((response) async {
        if(response.statusCode == 200){
          print('updated');
        }


      });
    } catch (error){
      print('updation Error: '+error.toString());
    }
  }


  Future<void> addFavorite(MenuModel element)  async {
    favorites.add(element.count);
    var fav = json.encode(favorites);
    // final SharedPreferences prefs = await SharedPreferences.getInstance();
    // prefs.setString('favMenu', fav);
    favoritesmenu.add(element);
  }
  Future<void> removeFavorite(MenuModel element) async {
    favorites.remove(element.count);
    var fav = json.encode(favorites);
    // final SharedPreferences prefs = await SharedPreferences.getInstance();
    // prefs.setString('favMenu', fav);
    favoritesmenu.remove(element);
  }
  Future<void> addNewFavorite(IconData icon, String s)  async {
    newFavList.add(icon);
    var fav = json.encode(favorites);
  }
  Future<void> removeNewFavorite(IconData icon, String s)  async {
    newFavList.remove(icon);


  }

  Future<void> getFavorite()  async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    var favorite = prefs.getString('favMenu');
    favorites.value = json.decode(favorite!);
  }
}