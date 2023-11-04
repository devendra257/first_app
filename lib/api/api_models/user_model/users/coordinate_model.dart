class CoordinateModel {
  double lat;
  double lng;

  CoordinateModel({required this.lat, required this.lng});

  factory CoordinateModel.fromJson(Map<String, dynamic> json) {
    return CoordinateModel(
      lat: json['lat'],
      lng: json['lng'],
    );
  }
}
