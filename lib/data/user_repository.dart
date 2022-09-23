import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_with_infinite_scroll_pagination/data/user.dart';
import 'package:riverpod_with_infinite_scroll_pagination/data/users_response.dart';

final userRepositoryProvider = Provider((ref) => UserRepository());

class UserRepository {
  User _createUser(int key) {
    return User(
      id: key,
      name: 'name-$key',
    );
  }

  Future<UsersResponse> getUsers(int page) async {
    UsersResponse result;
    switch (page) {
      case 2:
        result = UsersResponse(
          page: page,
          isLast: true,
          users: List.generate(
            5,
            (index) => _createUser(10 * page + index),
          ),
        );
        break;
      default:
        result = UsersResponse(
          page: page,
          isLast: false,
          users: List.generate(
            10,
            (index) => _createUser(10 * page + index),
          ),
        );
        break;
    }
    return Future.delayed(
      const Duration(seconds: 2),
      () {
        return result;
      },
    );
  }
}
