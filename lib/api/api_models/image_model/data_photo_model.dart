import 'package:first_app/api/api_models/image_model/photo_model.dart';

class DataPhotoModel {
  String? nextPage;
  int? page;
  int? perPage;
  int? totalResults;
  List<PhotoModel>? photos;

  DataPhotoModel({
    this.nextPage,
    this.page,
    this.perPage,
    this.photos,
    this.totalResults,
  });

  factory DataPhotoModel.fromJson(Map<String, dynamic> json) {
    List<PhotoModel> mPhotos = [];

    for (Map<String, dynamic> eachPhoto in json['photos']) {
      mPhotos.add(PhotoModel.fromJson(eachPhoto));
    }

    return DataPhotoModel(
      nextPage: json['next_page'],
      page: json['page'],
      perPage: json['per_page'],
      photos: mPhotos,
    );
  }
}
