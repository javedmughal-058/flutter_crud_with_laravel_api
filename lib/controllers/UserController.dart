import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_crud_with_laravel_api/models/MenuModel.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserController extends GetxController{


  late TextEditingController name;
  late TextEditingController email;
  var setFav =false.obs;
  var favorites = [].obs;
  var favoritesmenu = <MenuModel>[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    name = TextEditingController();
    email = TextEditingController();
  }
// Future<bool> favourite(int index)async {
//   print("$index ${menu[index].fav}");
//   setFav.value=!setFav.value;
//   menu[index].fav =setFav.value;
//   return menu[index].fav;
//
//
// }

  Future<void> addFavorite(MenuModel element)  async {
    favorites.add(element.count);
    var fav = json.encode(favorites);
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('favoriteSurahs', fav);
    favoritesmenu.add(element);
  }

  Future<void> removeFavorite(MenuModel element) async {
    favorites.remove(element.count);
    var fav = json.encode(favorites);
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('favoriteSurahs', fav);
    favoritesmenu.remove(element);
  }
}