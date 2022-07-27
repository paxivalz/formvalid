import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:formvalid/controller/get_controller.dart';
import 'package:formvalid/screen/infouser.dart';
import 'package:formvalid/screen/showalluser.dart';
import 'package:get/get.dart';

class Register extends StatelessWidget {
  final GetController getController = Get.find();

  Register({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    String username = '';
    String mail = '';
    String address = '';
    String age = '';
    TextEditingController textEditingControllerUser =
        TextEditingController(text: username); //save text from username
    TextEditingController textEditingControllerMail =
        TextEditingController(text: mail); //save text from mail
    TextEditingController textEditingControllerAds =
        TextEditingController(text: address); //save text from address
    TextEditingController textEditingControllerAge =
        TextEditingController(text: age); //save text from age
    return Scaffold(
      appBar: AppBar(
        title: const Text('- r e g i s t e r- '),
        centerTitle: true,
        backgroundColor: Colors.indigoAccent[200],
        actions: [
          IconButton(
              onPressed: () {
                Get.to(const ShowAllUser());
              },
              icon: const Icon(
                Icons.account_circle_rounded,
                size: 30,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Username
                  TextFormField(
                    // controller: textEditingControllerUser,
                    autofocus: true,
                    validator: String?textEditingControllerUser ,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        hintText: 'Your Username',
                        labelText: 'Username'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //Mail
                  TextFormField(
                    controller: textEditingControllerMail,
                    autofocus: true,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        hintText: 'Your Mail',
                        labelText: 'Mail'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //Address
                  TextFormField(
                    controller: textEditingControllerAds,
                    autofocus: true,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        hintText: 'Your Address',
                        labelText: 'Address'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //Age
                  TextFormField(
                    controller: textEditingControllerAge,
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        hintText: 'Your Age',
                        labelText: 'Age'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
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
                      // String email = textEditingControllerMail.toString();
                      // final bool isValid = EmailValidator.validate(email);
                      // var addUser = UserModel(
                      //     username: textEditingControllerUser.text,
                      //     mail: textEditingControllerMail.text,
                      //     address: textEditingControllerAds.text,
                      //     age: textEditingControllerAge.text);
                      if (formKey.currentState!.validate()){
                        Get.to(const InfoUser());
                      }
                      // isValid ? addUser : null;

                      // getController.users.add(addUser);
                      
                    },
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
