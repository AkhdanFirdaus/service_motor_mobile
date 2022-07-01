// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) chatMessageChanged,
    required TResult Function(String transactionId) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? chatMessageChanged,
    TResult Function(String transactionId)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? chatMessageChanged,
    TResult Function(String transactionId)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatMessageChanged value) chatMessageChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChatMessageChanged value)? chatMessageChanged,
    TResult Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatMessageChanged value)? chatMessageChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatFormEventCopyWith<$Res> {
  factory $ChatFormEventCopyWith(
          ChatFormEvent value, $Res Function(ChatFormEvent) then) =
      _$ChatFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatFormEventCopyWithImpl<$Res>
    implements $ChatFormEventCopyWith<$Res> {
  _$ChatFormEventCopyWithImpl(this._value, this._then);

  final ChatFormEvent _value;
  // ignore: unused_field
  final $Res Function(ChatFormEvent) _then;
}

/// @nodoc
abstract class _$$_ChatMessageChangedCopyWith<$Res> {
  factory _$$_ChatMessageChangedCopyWith(_$_ChatMessageChanged value,
          $Res Function(_$_ChatMessageChanged) then) =
      __$$_ChatMessageChangedCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$_ChatMessageChangedCopyWithImpl<$Res>
    extends _$ChatFormEventCopyWithImpl<$Res>
    implements _$$_ChatMessageChangedCopyWith<$Res> {
  __$$_ChatMessageChangedCopyWithImpl(
      _$_ChatMessageChanged _value, $Res Function(_$_ChatMessageChanged) _then)
      : super(_value, (v) => _then(v as _$_ChatMessageChanged));

  @override
  _$_ChatMessageChanged get _value => super._value as _$_ChatMessageChanged;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_ChatMessageChanged(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChatMessageChanged implements _ChatMessageChanged {
  const _$_ChatMessageChanged(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ChatFormEvent.chatMessageChanged(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatMessageChanged &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_ChatMessageChangedCopyWith<_$_ChatMessageChanged> get copyWith =>
      __$$_ChatMessageChangedCopyWithImpl<_$_ChatMessageChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) chatMessageChanged,
    required TResult Function(String transactionId) saved,
  }) {
    return chatMessageChanged(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? chatMessageChanged,
    TResult Function(String transactionId)? saved,
  }) {
    return chatMessageChanged?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? chatMessageChanged,
    TResult Function(String transactionId)? saved,
    required TResult orElse(),
  }) {
    if (chatMessageChanged != null) {
      return chatMessageChanged(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatMessageChanged value) chatMessageChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return chatMessageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChatMessageChanged value)? chatMessageChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return chatMessageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatMessageChanged value)? chatMessageChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (chatMessageChanged != null) {
      return chatMessageChanged(this);
    }
    return orElse();
  }
}

abstract class _ChatMessageChanged implements ChatFormEvent {
  const factory _ChatMessageChanged(final String message) =
      _$_ChatMessageChanged;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ChatMessageChangedCopyWith<_$_ChatMessageChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SavedCopyWith<$Res> {
  factory _$$_SavedCopyWith(_$_Saved value, $Res Function(_$_Saved) then) =
      __$$_SavedCopyWithImpl<$Res>;
  $Res call({String transactionId});
}

/// @nodoc
class __$$_SavedCopyWithImpl<$Res> extends _$ChatFormEventCopyWithImpl<$Res>
    implements _$$_SavedCopyWith<$Res> {
  __$$_SavedCopyWithImpl(_$_Saved _value, $Res Function(_$_Saved) _then)
      : super(_value, (v) => _then(v as _$_Saved));

  @override
  _$_Saved get _value => super._value as _$_Saved;

  @override
  $Res call({
    Object? transactionId = freezed,
  }) {
    return _then(_$_Saved(
      transactionId == freezed
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved(this.transactionId);

  @override
  final String transactionId;

  @override
  String toString() {
    return 'ChatFormEvent.saved(transactionId: $transactionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Saved &&
            const DeepCollectionEquality()
                .equals(other.transactionId, transactionId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(transactionId));

  @JsonKey(ignore: true)
  @override
  _$$_SavedCopyWith<_$_Saved> get copyWith =>
      __$$_SavedCopyWithImpl<_$_Saved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) chatMessageChanged,
    required TResult Function(String transactionId) saved,
  }) {
    return saved(transactionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? chatMessageChanged,
    TResult Function(String transactionId)? saved,
  }) {
    return saved?.call(transactionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? chatMessageChanged,
    TResult Function(String transactionId)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(transactionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatMessageChanged value) chatMessageChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChatMessageChanged value)? chatMessageChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatMessageChanged value)? chatMessageChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements ChatFormEvent {
  const factory _Saved(final String transactionId) = _$_Saved;

  String get transactionId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SavedCopyWith<_$_Saved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatFormState {
  MessageText get messageText => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<ChatMessageFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatFormStateCopyWith<ChatFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatFormStateCopyWith<$Res> {
  factory $ChatFormStateCopyWith(
          ChatFormState value, $Res Function(ChatFormState) then) =
      _$ChatFormStateCopyWithImpl<$Res>;
  $Res call(
      {MessageText messageText,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<ChatMessageFailure, Unit>> saveFailureOrSuccessOption});
}

/// @nodoc
class _$ChatFormStateCopyWithImpl<$Res>
    implements $ChatFormStateCopyWith<$Res> {
  _$ChatFormStateCopyWithImpl(this._value, this._then);

  final ChatFormState _value;
  // ignore: unused_field
  final $Res Function(ChatFormState) _then;

  @override
  $Res call({
    Object? messageText = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      messageText: messageText == freezed
          ? _value.messageText
          : messageText // ignore: cast_nullable_to_non_nullable
              as MessageText,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ChatMessageFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$$_ChatFormStateCopyWith<$Res>
    implements $ChatFormStateCopyWith<$Res> {
  factory _$$_ChatFormStateCopyWith(
          _$_ChatFormState value, $Res Function(_$_ChatFormState) then) =
      __$$_ChatFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {MessageText messageText,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<ChatMessageFailure, Unit>> saveFailureOrSuccessOption});
}

/// @nodoc
class __$$_ChatFormStateCopyWithImpl<$Res>
    extends _$ChatFormStateCopyWithImpl<$Res>
    implements _$$_ChatFormStateCopyWith<$Res> {
  __$$_ChatFormStateCopyWithImpl(
      _$_ChatFormState _value, $Res Function(_$_ChatFormState) _then)
      : super(_value, (v) => _then(v as _$_ChatFormState));

  @override
  _$_ChatFormState get _value => super._value as _$_ChatFormState;

  @override
  $Res call({
    Object? messageText = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_$_ChatFormState(
      messageText: messageText == freezed
          ? _value.messageText
          : messageText // ignore: cast_nullable_to_non_nullable
              as MessageText,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ChatMessageFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_ChatFormState implements _ChatFormState {
  const _$_ChatFormState(
      {required this.messageText,
      required this.showErrorMessages,
      required this.isEditing,
      required this.isSaving,
      required this.saveFailureOrSuccessOption});

  @override
  final MessageText messageText;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<ChatMessageFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'ChatFormState(messageText: $messageText, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatFormState &&
            const DeepCollectionEquality()
                .equals(other.messageText, messageText) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality().equals(other.isEditing, isEditing) &&
            const DeepCollectionEquality().equals(other.isSaving, isSaving) &&
            const DeepCollectionEquality().equals(
                other.saveFailureOrSuccessOption, saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(messageText),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isEditing),
      const DeepCollectionEquality().hash(isSaving),
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$$_ChatFormStateCopyWith<_$_ChatFormState> get copyWith =>
      __$$_ChatFormStateCopyWithImpl<_$_ChatFormState>(this, _$identity);
}

abstract class _ChatFormState implements ChatFormState {
  const factory _ChatFormState(
      {required final MessageText messageText,
      required final bool showErrorMessages,
      required final bool isEditing,
      required final bool isSaving,
      required final Option<Either<ChatMessageFailure, Unit>>
          saveFailureOrSuccessOption}) = _$_ChatFormState;

  @override
  MessageText get messageText => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isEditing => throw _privateConstructorUsedError;
  @override
  bool get isSaving => throw _privateConstructorUsedError;
  @override
  Option<Either<ChatMessageFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ChatFormStateCopyWith<_$_ChatFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
