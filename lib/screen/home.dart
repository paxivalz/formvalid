import 'package:flutter/material.dart';
import 'package:formvalid/controller/get_controller.dart';
import 'package:formvalid/screen/register.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GetController getController = Get.put(GetController());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: Container(
                  width: 300,
                  height: 50,
                  color: Colors.indigoAccent[200],
                  child: const Center(
                      child: Text(
                    'Register',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ))),
              onPressed: () {
                Get.to(Register());
              },
            ),
          ],
        ),
      ),
    );
  }
}
