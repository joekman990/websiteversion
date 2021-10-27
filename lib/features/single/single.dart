import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'single.freezed.dart';
part 'single.g.dart';

@freezed
abstract class Single with _$Single {
  const factory Single({
    required String firstName,
    required String lastName,
    String? singleImagePath,
    required bool isMale,
    String? phoneNumber,
    String? email,
    int? age,
    String? resume,
    String? tehillimName,
    String? dOB,
    num? height,
    String? location,
  }) = _Single;

  factory Single.fromJson(Map<String, dynamic> json) => _$SingleFromJson(json);
}
