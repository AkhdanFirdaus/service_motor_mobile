// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_layout_menu_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainLayoutMenuState {
  int get currentIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainLayoutMenuStateCopyWith<MainLayoutMenuState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainLayoutMenuStateCopyWith<$Res> {
  factory $MainLayoutMenuStateCopyWith(
          MainLayoutMenuState value, $Res Function(MainLayoutMenuState) then) =
      _$MainLayoutMenuStateCopyWithImpl<$Res>;
  $Res call({int currentIndex});
}

/// @nodoc
class _$MainLayoutMenuStateCopyWithImpl<$Res>
    implements $MainLayoutMenuStateCopyWith<$Res> {
  _$MainLayoutMenuStateCopyWithImpl(this._value, this._then);

  final MainLayoutMenuState _value;
  // ignore: unused_field
  final $Res Function(MainLayoutMenuState) _then;

  @override
  $Res call({
    Object? currentIndex = freezed,
  }) {
    return _then(_value.copyWith(
      currentIndex: currentIndex == freezed
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_MainLayoutMenuStateCopyWith<$Res>
    implements $MainLayoutMenuStateCopyWith<$Res> {
  factory _$$_MainLayoutMenuStateCopyWith(_$_MainLayoutMenuState value,
          $Res Function(_$_MainLayoutMenuState) then) =
      __$$_MainLayoutMenuStateCopyWithImpl<$Res>;
  @override
  $Res call({int currentIndex});
}

/// @nodoc
class __$$_MainLayoutMenuStateCopyWithImpl<$Res>
    extends _$MainLayoutMenuStateCopyWithImpl<$Res>
    implements _$$_MainLayoutMenuStateCopyWith<$Res> {
  __$$_MainLayoutMenuStateCopyWithImpl(_$_MainLayoutMenuState _value,
      $Res Function(_$_MainLayoutMenuState) _then)
      : super(_value, (v) => _then(v as _$_MainLayoutMenuState));

  @override
  _$_MainLayoutMenuState get _value => super._value as _$_MainLayoutMenuState;

  @override
  $Res call({
    Object? currentIndex = freezed,
  }) {
    return _then(_$_MainLayoutMenuState(
      currentIndex == freezed
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_MainLayoutMenuState implements _MainLayoutMenuState {
  const _$_MainLayoutMenuState(this.currentIndex);

  @override
  final int currentIndex;

  @override
  String toString() {
    return 'MainLayoutMenuState(currentIndex: $currentIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainLayoutMenuState &&
            const DeepCollectionEquality()
                .equals(other.currentIndex, currentIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(currentIndex));

  @JsonKey(ignore: true)
  @override
  _$$_MainLayoutMenuStateCopyWith<_$_MainLayoutMenuState> get copyWith =>
      __$$_MainLayoutMenuStateCopyWithImpl<_$_MainLayoutMenuState>(
          this, _$identity);
}

abstract class _MainLayoutMenuState implements MainLayoutMenuState {
  const factory _MainLayoutMenuState(final int currentIndex) =
      _$_MainLayoutMenuState;

  @override
  int get currentIndex => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MainLayoutMenuStateCopyWith<_$_MainLayoutMenuState> get copyWith =>
      throw _privateConstructorUsedError;
}
