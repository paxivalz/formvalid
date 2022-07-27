import 'package:flutter/material.dart';
import 'package:formvalid/controller/get_controller.dart';
import 'package:formvalid/screen/infouser.dart';
import 'package:get/get.dart';

class ShowAllUser extends StatelessWidget {
  const ShowAllUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GetController getController = Get.put(GetController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('- u s e r s -'),
        backgroundColor: Colors.indigoAccent[200],
      ),
      body: Center(
          child: TextButton(
        onPressed: () {
          Get.to(InfoUser());
        },
        child: Text('data'),
      )),
    );
  }
}
