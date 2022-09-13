// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'users_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UsersViewState {
  List<UsersResponse> get paginationResponses =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UsersViewStateCopyWith<UsersViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersViewStateCopyWith<$Res> {
  factory $UsersViewStateCopyWith(
          UsersViewState value, $Res Function(UsersViewState) then) =
      _$UsersViewStateCopyWithImpl<$Res>;
  $Res call({List<UsersResponse> paginationResponses});
}

/// @nodoc
class _$UsersViewStateCopyWithImpl<$Res>
    implements $UsersViewStateCopyWith<$Res> {
  _$UsersViewStateCopyWithImpl(this._value, this._then);

  final UsersViewState _value;
  // ignore: unused_field
  final $Res Function(UsersViewState) _then;

  @override
  $Res call({
    Object? paginationResponses = freezed,
  }) {
    return _then(_value.copyWith(
      paginationResponses: paginationResponses == freezed
          ? _value.paginationResponses
          : paginationResponses // ignore: cast_nullable_to_non_nullable
              as List<UsersResponse>,
    ));
  }
}

/// @nodoc
abstract class _$$_UsersViewStateCopyWith<$Res>
    implements $UsersViewStateCopyWith<$Res> {
  factory _$$_UsersViewStateCopyWith(
          _$_UsersViewState value, $Res Function(_$_UsersViewState) then) =
      __$$_UsersViewStateCopyWithImpl<$Res>;
  @override
  $Res call({List<UsersResponse> paginationResponses});
}

/// @nodoc
class __$$_UsersViewStateCopyWithImpl<$Res>
    extends _$UsersViewStateCopyWithImpl<$Res>
    implements _$$_UsersViewStateCopyWith<$Res> {
  __$$_UsersViewStateCopyWithImpl(
      _$_UsersViewState _value, $Res Function(_$_UsersViewState) _then)
      : super(_value, (v) => _then(v as _$_UsersViewState));

  @override
  _$_UsersViewState get _value => super._value as _$_UsersViewState;

  @override
  $Res call({
    Object? paginationResponses = freezed,
  }) {
    return _then(_$_UsersViewState(
      paginationResponses: paginationResponses == freezed
          ? _value._paginationResponses
          : paginationResponses // ignore: cast_nullable_to_non_nullable
              as List<UsersResponse>,
    ));
  }
}

/// @nodoc

class _$_UsersViewState extends _UsersViewState {
  const _$_UsersViewState(
      {required final List<UsersResponse> paginationResponses})
      : _paginationResponses = paginationResponses,
        super._();

  final List<UsersResponse> _paginationResponses;
  @override
  List<UsersResponse> get paginationResponses {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paginationResponses);
  }

  @override
  String toString() {
    return 'UsersViewState(paginationResponses: $paginationResponses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsersViewState &&
            const DeepCollectionEquality()
                .equals(other._paginationResponses, _paginationResponses));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_paginationResponses));

  @JsonKey(ignore: true)
  @override
  _$$_UsersViewStateCopyWith<_$_UsersViewState> get copyWith =>
      __$$_UsersViewStateCopyWithImpl<_$_UsersViewState>(this, _$identity);
}

abstract class _UsersViewState extends UsersViewState {
  const factory _UsersViewState(
          {required final List<UsersResponse> paginationResponses}) =
      _$_UsersViewState;
  const _UsersViewState._() : super._();

  @override
  List<UsersResponse> get paginationResponses;
  @override
  @JsonKey(ignore: true)
  _$$_UsersViewStateCopyWith<_$_UsersViewState> get copyWith =>
      throw _privateConstructorUsedError;
}
