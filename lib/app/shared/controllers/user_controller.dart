import 'package:get/get.dart';
import 'package:skeleton/app/data/model/user_model.dart';
import 'package:skeleton/app/data/repository/user_repo.dart';

class UserController extends GetxController {
  UserRepo userRepo = UserRepo();
  Rx<UserModel> userModel = UserModel().obs;

  Future<void> updateUserModel() async {
    userModel(await userRepo.getUserData());
  }
}
