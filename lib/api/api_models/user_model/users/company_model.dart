import 'package:first_app/api/api_models/user_model/users/address_model.dart';

class CompanyModel {
  AddressModel address;
  String department;
  String name;
  String title;

  CompanyModel(
      {required this.address,
      required this.department,
      required this.name,
      required this.title});

  factory CompanyModel.fromJson(Map<String, dynamic> json) {
    return CompanyModel(
      address: AddressModel.fromJson(json['address']),
      department: json['department'],
      name: json['name'],
      title: json['title'],
    );
  }
}
