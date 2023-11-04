import 'package:first_app/api/api_models/image_model/scr_model.dart';

class PhotoModel {
  String? alt;
  String? avgColor;
  int? height;
  int? id;
  bool? liked;
  String? photographer;
  int? photographerId;
  String? photographerUrl;
  ScrModel? src;
  String? url;
  int? width;

  PhotoModel({
    this.alt,
    this.avgColor,
    this.height,
    this.id,
    this.liked,
    this.photographer,
    this.photographerId,
    this.photographerUrl,
    this.url,
    this.src,
    this.width,
  });

  factory PhotoModel.fromJson(Map<String, dynamic> json) {
    return PhotoModel(
      alt: json['alt'],
      avgColor: json['avg_color'],
      height: json['height'],
      id: json['id'],
      liked: json['liked'],
      photographer: json['photographer'],
      photographerId: json['photographer_id'],
      photographerUrl: json['photographer_url'],
      src: ScrModel.fromJson(json['src']),
      width: json['width'],
    );
  }
}
