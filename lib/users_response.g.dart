// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UsersResponse _$$_UsersResponseFromJson(Map<String, dynamic> json) =>
    _$_UsersResponse(
      isLast: json['isLast'] as bool,
      users: (json['users'] as List<dynamic>)
          .map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UsersResponseToJson(_$_UsersResponse instance) =>
    <String, dynamic>{
      'isLast': instance.isLast,
      'users': instance.users,
    };
