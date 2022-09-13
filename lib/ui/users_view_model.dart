import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_with_infinite_scroll_pagination/data/user_repository.dart';
import 'package:riverpod_with_infinite_scroll_pagination/data/users_response.dart';
import 'package:riverpod_with_infinite_scroll_pagination/ui/users_view_state.dart';

final usersViewModelProvider =
    StateNotifierProvider<UsersViewModel, UsersViewState>(
  (ref) {
    return UsersViewModel(
      UsersViewState.initial(),
    );
  },
);

class UsersViewModel extends StateNotifier<UsersViewState> {
  UsersViewModel(UsersViewState? usersViewState)
      : super(usersViewState ?? UsersViewState.initial());

  Future<void> fetchPage(
    int page,
    void Function(UsersResponse) onSuccess,
    void Function(String) onError,
  ) async {
    try {
      final response = await UserRepository().getUsers(page);
      onSuccess(response);
    } catch (e) {
      onError('error');
    }
  }
}
