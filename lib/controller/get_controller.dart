import 'package:formvalid/model/user_model.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class GetController extends GetxController {
  var users = <UserModel>[].obs;

  @override
  void onInit() {
    List? storeUsers = GetStorage().read<List>('users');

    if (!storeUsers.isNull) {
      users = storeUsers!.map((e) => UserModel.fromJson(e)).toList().obs;
    }
    ever(users, (_) {
      GetStorage().write('users', users.toList());
    });
    super.onInit();
  }
}
