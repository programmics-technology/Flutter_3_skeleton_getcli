import 'package:get/get.dart';

import '../../data/model/user_model.dart';
import '../../data/repository/user_repo.dart';

class UserController extends GetxController {
  UserRepo userRepo = UserRepo();
  Rx<UserModel> userModel = UserModel().obs;

  Future<void> updateUserModel() async {
    userModel(await userRepo.getUserData());
  }
}
