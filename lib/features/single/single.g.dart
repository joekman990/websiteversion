// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Single _$$_SingleFromJson(Map<String, dynamic> json) => _$_Single(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      singleImagePath: json['singleImagePath'] as String?,
      isMale: json['isMale'] as bool,
      phoneNumber: json['phoneNumber'] as String?,
      email: json['email'] as String?,
      age: json['age'] as int?,
      resume: json['resume'] as String?,
      tehillimName: json['tehillimName'] as String?,
      dOB: json['dOB'] as String?,
      height: json['height'] as num?,
      location: json['location'] as String?,
    );

Map<String, dynamic> _$$_SingleToJson(_$_Single instance) => <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'singleImagePath': instance.singleImagePath,
      'isMale': instance.isMale,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'age': instance.age,
      'resume': instance.resume,
      'tehillimName': instance.tehillimName,
      'dOB': instance.dOB,
      'height': instance.height,
      'location': instance.location,
    };
