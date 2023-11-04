import 'package:first_app/api/api_models/product_model/product_model.dart';

class DataProductModel {
  int? limit;
  int? skip;
  int? total;
  List<ProductModel>? products;

  DataProductModel({
    this.limit,
    this.skip,
    this.total,
    this.products,
  });

  factory DataProductModel.fromJson(Map<String, dynamic> json) {
    List<ProductModel> listProductModel = [];

    for (Map<String, dynamic> eachProductModel in json['products']) {
      listProductModel.add(ProductModel.fromJson(eachProductModel));
    }

    return DataProductModel(
      limit: json['limit'],
      skip: json['skip'],
      total: json['total'],
      products: listProductModel,
    );
  }
}
