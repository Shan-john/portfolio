import 'package:json_annotation/json_annotation.dart';

part 'skill_model.g.dart';

@JsonSerializable()
class SkillModel {
  String? name;
  String? image;

  SkillModel({this.name, this.image});

  factory SkillModel.fromJson(Map<String, dynamic> json) {
    return _$SkillModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SkillModelToJson(this);
}
