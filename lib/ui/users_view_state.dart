import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_with_infinite_scroll_pagination/data/users_response.dart';

part 'users_view_state.freezed.dart';

@freezed
class UsersViewState with _$UsersViewState {
  const UsersViewState._();

  const factory UsersViewState({
    required List<UsersResponse> paginationResponses,
  }) = _UsersViewState;

  factory UsersViewState.initial() => const UsersViewState(
        paginationResponses: [],
      );
}
