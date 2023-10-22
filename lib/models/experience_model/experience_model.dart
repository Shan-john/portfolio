import 'package:json_annotation/json_annotation.dart';

part 'experience_model.g.dart';

@JsonSerializable()
class ExperienceModel {
  String? name;
  String? description; 
  String? date;
  String? technologyUsed;

  ExperienceModel({
    this.name,
    this.description,
    this.date,
    this.technologyUsed,
  });

  factory ExperienceModel.fromJson(Map<String, dynamic> json) {
    return _$ExperienceModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ExperienceModelToJson(this);
}
