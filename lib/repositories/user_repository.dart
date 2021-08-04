import 'dart:async';
import 'dart:convert';
import 'package:user_information/models/user_model.dart';
import 'package:user_information/repositories/user_repository_interface.dart';
import 'package:user_information/utilities/network_utilities.dart';
import 'package:user_information/utilities/utils.dart';

class UserRepository implements IUserRepository{
  
  @override
  Future<List<User>> getAllUsers() async {
    List<User>? usersInformationList=[];
    var response = await Network().fetchtUsersData();
    var userInfoBody = jsonDecode(response.body);
    if (response.statusCode == 200) {
      var list = userInfoBody as List;
      usersInformationList = list.map((user) => User.fromJson(user))
        .toList();
    }
    else if (response.statusCode == 400) {
      print('Unable to load data');
      showErrorToastMessage(message:'Unable to load data');
    }
    // else
      // print('an error occured');
      // showErrorToastMessage(message:'An error occured');

      return usersInformationList;
  }
}
