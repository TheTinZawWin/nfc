
import 'package:get/get.dart';

import '../Model/LoginModel.dart';
class LoginRepository {
  Future<LoginResultModel> login(String email, String password) async {
    if(email == "admin@gmail.com" && password == "12345678")
    {
        return LoginResultModel(200, "Success");
    }
    else{
        return LoginResultModel(200, "No Found");
    }
  }
}
