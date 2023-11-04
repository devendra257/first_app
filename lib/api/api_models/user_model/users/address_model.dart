import 'package:first_app/api/api_models/user_model/users/coordinate_model.dart';

class AddressModel {
  String address;
  String city;
  CoordinateModel coordinates;
  String postalCode;
  String state;

  AddressModel({
    required this.address,
    required this.city,
    required this.coordinates,
    required this.postalCode,
    required this.state,
  });

  factory AddressModel.fromJson(Map<String, dynamic> json) {
    return AddressModel(
      address: json['address'],
      city: json['city'],
      coordinates: CoordinateModel.fromJson(json['coordinates']),
      postalCode: json['postalCode'],
      state: json['state'],
    );
  }
}
