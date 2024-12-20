import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_user_model.freezed.dart';
part 'get_user_model.g.dart';

List<GetUserModel> welcomeFromJson(String str) => List<GetUserModel>.from(
    json.decode(str).map((x) => GetUserModel.fromJson(x)));

String GetUserModelToJson(List<GetUserModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class GetUserModel with _$GetUserModel {
  const factory GetUserModel({
    // ignore: invalid_annotation_target
    @JsonKey(name: "id") int? id,
    // ignore: invalid_annotation_target
    @JsonKey(name: "name") required String name,
    // ignore: invalid_annotation_target
    @JsonKey(name: "phone") required String phone,
    // ignore: invalid_annotation_target
    @JsonKey(name: "email") required String email,
    // ignore: invalid_annotation_target
    @JsonKey(name: "address") required String address,
    // ignore: invalid_annotation_target
    @JsonKey(name: "gender") required String gender,
    // ignore: invalid_annotation_target
    @JsonKey(name: "description") required String description,
    // ignore: invalid_annotation_target
    @JsonKey(name: "created_at") DateTime? createdAt,
    // ignore: invalid_annotation_target
    @JsonKey(name: "updated_at") DateTime? updatedAt,
  }) = _GetUserModel;

  factory GetUserModel.fromJson(Map<String, dynamic> json) =>
      _$GetUserModelFromJson(json);
}
