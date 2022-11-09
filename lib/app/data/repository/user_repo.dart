import 'package:skeleton/app/data/api/api_client.dart';
import 'package:skeleton/app/data/model/user_model.dart';
import 'package:skeleton/utils/constants/api_constants.dart';

class UserRepo {
  ApiClient apiClient = ApiClient();

  Future<UserModel> getUserData() async {
//manage this function according to your need

    return apiClient.getData(ApiConstants.getUserData).then((value) {
      if (value.statusCode == 200) {
        return UserModel.fromJson(value.body);
      } else {
        return UserModel();
      }
    });
  }
}
