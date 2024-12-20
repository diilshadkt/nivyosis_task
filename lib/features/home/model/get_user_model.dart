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
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "phone") required String phone,
    @JsonKey(name: "email") required String email,
    @JsonKey(name: "address") required String address,
    @JsonKey(name: "gender") required String gender,
    @JsonKey(name: "description") required String description,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
  }) = _GetUserModel;

  factory GetUserModel.fromJson(Map<String, dynamic> json) =>
      _$GetUserModelFromJson(json);
}
