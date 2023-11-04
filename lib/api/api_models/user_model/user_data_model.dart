import 'package:first_app/api/api_models/user_model/users/user_model.dart';

class UserDataModel {
  int limit;
  int skip;
  int total;
  List<UserModel> users;

  UserDataModel(
      {required this.limit,
      required this.skip,
      required this.total,
      required this.users});

  factory UserDataModel.fromJson(Map<String, dynamic> json) {
    List<UserModel> userList = [];

    (json['users'] as List<Map<String, dynamic>>).forEach((element) {
      userList.add(UserModel.fromJson(element));
    });

    // for (Map<String, dynamic> eachUserModel in json['users']) {
    //   userList.add(UserModel.fromJson(eachUserModel));
    // }

    return UserDataModel(
      limit: json['limit'],
      skip: json['skip'],
      total: json['total'],
      users: userList,
    );
  }
}
