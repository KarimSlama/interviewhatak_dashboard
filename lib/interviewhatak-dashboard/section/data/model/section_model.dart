class SectionModel {
  final String sectionName;
  final String sectionDesc;
  final String sectionDate;
  final String sectionImage;
  final String sectionDifficulty;
  final String categoryName;
  final String fieldName;

  SectionModel({
    required this.sectionName,
    required this.sectionDesc,
    required this.sectionDate,
    required this.sectionDifficulty,
    required this.categoryName,
    required this.sectionImage,
    required this.fieldName,
  });

  factory SectionModel.fromJson(Map<String, dynamic> json) {
    return SectionModel(
      sectionName: json['section_name'],
      sectionDesc: json['section_desc'],
      sectionDate: json['section_date'],
      sectionDifficulty: json['section_difficulty'],
      categoryName: json['category_name'],
      sectionImage: json['section_image'],
      fieldName: json['field_name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'section_name': sectionName,
      'section_desc': sectionDesc,
      'section_date': sectionDate,
      'section_difficulty': sectionDifficulty,
      'category_name': categoryName,
      'section_image': sectionImage,
      'field_name': fieldName,
    };
  }
}
