import 'package:riverpod_with_infinite_scroll_pagination/user.dart';
import 'package:riverpod_with_infinite_scroll_pagination/users_response.dart';

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
          isLast: true,
          users: List.generate(
            5,
            (index) => _createUser(10 * page + index),
          ),
        );
        break;
      default:
        result = UsersResponse(
          isLast: true,
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
