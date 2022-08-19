import 'package:api_project2/model/Usermodel.dart';
import 'package:api_project2/service/Usersapiservice.dart';
import 'package:get/get.dart';

class Usercontroller extends GetxController {
  Usersapiservice _apiservice = Usersapiservice();
  var userList = <Usermodel>[].obs;
  Future getUserController() async {
    try {
      var response = await _apiservice.getUser();

      if (response != null) {
        userList.assignAll(response);
        print(userList[0].email);
      } else {
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }
}
 