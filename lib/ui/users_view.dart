import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:riverpod_with_infinite_scroll_pagination/data/user.dart';
import 'package:riverpod_with_infinite_scroll_pagination/ui/users_view_model.dart';

class UsersView extends HookConsumerWidget {
  UsersView({super.key});

  final PagingController<int, User> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usersViewModel = ref.watch(
      usersViewModelProvider.notifier,
    );
    final usersViewState = ref.watch(
      usersViewModelProvider,
    );
    useEffect(
      () {
        _pagingController.addPageRequestListener((pageKey) {
          usersViewModel.fetchPage(pageKey, (data) {
            if (data.isLast) {
              _pagingController.appendLastPage(data.users);
            } else {
              _pagingController.appendPage(data.users, data.nextPage);
            }
          }, (error) {
            _pagingController.error = error;
          });
        });

        return () {
          _pagingController.dispose();
        };
      },
      const [],
    );

    return RefreshIndicator(
      onRefresh: () => Future.sync(
        () => _pagingController.refresh(),
      ),
      child: PagedListView.separated(
        pagingController: _pagingController,
        separatorBuilder: (context, index) => const Divider(),
        builderDelegate: PagedChildBuilderDelegate<User>(
          itemBuilder: (context, item, index) => ListTile(
            title: Text(item.id.toString()),
            subtitle: Text(item.name),
          ),
        ),
      ),
    );
  }
}
