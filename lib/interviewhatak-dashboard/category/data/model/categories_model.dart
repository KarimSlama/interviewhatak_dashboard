class CategoriesModel {
  final String categoryName;
  final String categoryDesc;
  final String categoryImage;

  CategoriesModel({
    required this.categoryName,
    required this.categoryDesc,
    required this.categoryImage,
  });

  factory CategoriesModel.fromJson(Map<String, dynamic> map) {
    return CategoriesModel(
      categoryName: map['category_name'],
      categoryDesc: map['category_desc'],
      categoryImage: map['category_image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "category_name": this.categoryName,
      "category_desc": this.categoryDesc,
      "category_image": this.categoryImage,
    };
  }
}
