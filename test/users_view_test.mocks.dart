// Mocks generated by Mockito 5.3.1 from annotations
// in riverpod_with_infinite_scroll_pagination/test/users_view_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:mockito/mockito.dart' as _i1;
import 'package:riverpod_with_infinite_scroll_pagination/data/user_repository.dart'
    as _i3;
import 'package:riverpod_with_infinite_scroll_pagination/data/users_response.dart'
    as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeUsersResponse_0 extends _i1.SmartFake implements _i2.UsersResponse {
  _FakeUsersResponse_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [UserRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserRepository extends _i1.Mock implements _i3.UserRepository {
  @override
  _i4.Future<_i2.UsersResponse> getUsers(int? page) => (super.noSuchMethod(
        Invocation.method(
          #getUsers,
          [page],
        ),
        returnValue: _i4.Future<_i2.UsersResponse>.value(_FakeUsersResponse_0(
          this,
          Invocation.method(
            #getUsers,
            [page],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.UsersResponse>.value(_FakeUsersResponse_0(
          this,
          Invocation.method(
            #getUsers,
            [page],
          ),
        )),
      ) as _i4.Future<_i2.UsersResponse>);
}
