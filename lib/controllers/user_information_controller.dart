import 'package:user_information/models/user_model.dart';
import 'package:user_information/repositories/user_repository.dart';
import 'package:user_information/repositories/user_repository_interface.dart';


class UserInformationController{
  final IUserRepository _userRepository=UserRepository();
  
  Future<List<User>> fetchUsers(){
    return _userRepository.getAllUsers();
  }

}
