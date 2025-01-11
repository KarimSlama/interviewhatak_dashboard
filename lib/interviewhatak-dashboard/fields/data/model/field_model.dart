class FieldsModel {
  final String fieldName;
  final DateTime fieldDate;
  final String categoryName;
  final String color;
  final String description;

  FieldsModel({
    required this.fieldName,
    required this.fieldDate,
    required this.categoryName,
    required this.color,
    required this.description,
  });

  factory FieldsModel.fromJson(Map<String, dynamic> map) {
    return FieldsModel(
      fieldName: map['field_name'],
      fieldDate: map['field_date'],
      categoryName: map['category_name'],
      color: map['color'],
      description: map['field_desc'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "field_name": this.fieldName,
      "field_desc": this.description,
      "field_date": DateTime.now().toString(),
      "category_name": this.categoryName,
      "color": this.color,
    };
  }
}
