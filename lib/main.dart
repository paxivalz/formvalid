import 'package:flutter/material.dart';
import 'package:formvalid/screen/home.dart';
import 'package:formvalid/screen/register.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init(); //set GetStorage
  //set GetX
  runApp(const GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}
