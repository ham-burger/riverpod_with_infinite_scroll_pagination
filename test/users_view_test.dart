import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:riverpod_with_infinite_scroll_pagination/data/user.dart';
import 'package:riverpod_with_infinite_scroll_pagination/data/user_repository.dart';
import 'package:riverpod_with_infinite_scroll_pagination/data/users_response.dart';
import 'package:riverpod_with_infinite_scroll_pagination/ui/users_view.dart';

import 'users_view_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<UserRepository>(),
])
void main() {
  testWidgets('1st page load', (widgetTester) async {
    final mockUserRepository = MockUserRepository();
    when(mockUserRepository.getUsers(0)).thenAnswer(
      (_) async {
        return UsersResponse(
          page: 1,
          isLast: true,
          users: List.generate(
            20,
            (index) => User(
              id: index,
              name: 'test-name-$index',
            ),
          ),
        );
      },
    );
    await widgetTester.pumpWidget(
      ProviderScope(
        overrides: [
          userRepositoryProvider.overrideWithValue(mockUserRepository)
        ],
        child: MaterialApp(
          home: Material(
            child: UsersView(),
          ),
        ),
      ),
    );
    await widgetTester.pumpAndSettle();

    expect(find.byType(ListTile), findsWidgets);
    expect(find.text('test-name-0'), findsOneWidget);

    await widgetTester.drag(
      find.byType(PagedListView<int, User>),
      const Offset(0.0, -2000),
    );
    await widgetTester.pumpAndSettle();
    expect(find.text('test-name-19'), findsOneWidget);
  });

  testWidgets('2nd page load', (widgetTester) async {
    final mockUserRepository = MockUserRepository();
    when(mockUserRepository.getUsers(0)).thenAnswer(
      (_) async {
        return UsersResponse(
          page: 0,
          isLast: false,
          users: List.generate(
            20,
            (index) => User(
              id: index,
              name: 'test-name-$index',
            ),
          ),
        );
      },
    );
    when(mockUserRepository.getUsers(1)).thenAnswer(
      (_) async {
        return UsersResponse(
          page: 1,
          isLast: true,
          users: List.generate(
            5,
            (index) => User(
              id: index + 20,
              name: 'test-name-${index + 20}',
            ),
          ),
        );
      },
    );

    await widgetTester.pumpWidget(
      ProviderScope(
        overrides: [
          userRepositoryProvider.overrideWithValue(mockUserRepository)
        ],
        child: MaterialApp(
          home: Material(
            child: UsersView(),
          ),
        ),
      ),
    );
    await widgetTester.pumpAndSettle();

    expect(find.byType(ListTile), findsWidgets);
    expect(find.text('test-name-0'), findsOneWidget);

    await widgetTester.drag(
      find.byType(PagedListView<int, User>),
      const Offset(0.0, -2000),
    );
    await widgetTester.pumpAndSettle();
    expect(find.text('test-name-19'), findsOneWidget);
    await widgetTester.drag(
      find.byType(PagedListView<int, User>),
      const Offset(0.0, -2000),
    );

    await widgetTester.pumpAndSettle();
    expect(find.text('test-name-24'), findsOneWidget);
  });
}
