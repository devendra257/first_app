class ProductModel {
  String? brand;
  String? category;
  String? description;
  num? discountPercentage;
  num? id;
  num? price;
  num? rating;
  num? stock;
  String? thumbnail;
  String? title;
  List<dynamic>? images;

  ProductModel({
    this.brand,
    this.category,
    this.description,
    this.discountPercentage,
    this.id,
    this.price,
    this.rating,
    this.stock,
    this.thumbnail,
    this.title,
    this.images,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      brand: json['brand'],
      category: json['category'],
      description: json['category'],
      discountPercentage: json['discountPercentage'],
      id: json['id'],
      price: json['price'],
      rating: json['rating'],
      stock: json['stock'],
      thumbnail: json['thumbnail'],
      title: json['title'],
      // images: List<String>.from(json['images']).map((element) => element).toList(),
      images: json['images'],
    );
  }
}
