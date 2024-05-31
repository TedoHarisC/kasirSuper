import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel extends Equatable {
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "email")
  final String email;
  @JsonKey(name: "phoneNumber")
  final String phoneNumber;
  @JsonKey(name: "image")
  final String image;

  const UserModel({
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.image,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  @override
  List<Object> get props => [name, email, phoneNumber, image];
}
