import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_with_infinite_scroll_pagination/user.dart';

part 'users_response.freezed.dart';
part 'users_response.g.dart';

@freezed
class UsersResponse with _$UsersResponse {
  const UsersResponse._();

  const factory UsersResponse({
    required int page,
    required bool isLast,
    required List<User> users,
  }) = _UsersResponse;

  factory UsersResponse.fromJson(Map<String, dynamic> json) =>
      _$UsersResponseFromJson(json);

  int get nextPage => page + 1;
}
