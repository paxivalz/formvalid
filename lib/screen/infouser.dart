import 'package:flutter/material.dart';

class InfoUser extends StatelessWidget {
  const InfoUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('username'),
          centerTitle: true,
          backgroundColor: Colors.indigoAccent[200],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('username : '),
              Text('mail : '),
              Text('address'),
              Text('phone : '),
              Text('age : '),
            ],
          ),
        ));
  }
}
