import 'package:user_information/models/user_model.dart';

abstract class IUserRepository{

  Future<List<User>> getAllUsers();

}