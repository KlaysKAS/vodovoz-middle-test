// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EmployerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String msg) fatalError,
    required TResult Function(String msg, EmployerState lastState) error,
    required TResult Function(List<Employer> employers) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String msg)? fatalError,
    TResult? Function(String msg, EmployerState lastState)? error,
    TResult? Function(List<Employer> employers)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String msg)? fatalError,
    TResult Function(String msg, EmployerState lastState)? error,
    TResult Function(List<Employer> employers)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(FatalError value) fatalError,
    required TResult Function(Error value) error,
    required TResult Function(Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(FatalError value)? fatalError,
    TResult? Function(Error value)? error,
    TResult? Function(Success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(FatalError value)? fatalError,
    TResult Function(Error value)? error,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployerStateCopyWith<$Res> {
  factory $EmployerStateCopyWith(
          EmployerState value, $Res Function(EmployerState) then) =
      _$EmployerStateCopyWithImpl<$Res, EmployerState>;
}

/// @nodoc
class _$EmployerStateCopyWithImpl<$Res, $Val extends EmployerState>
    implements $EmployerStateCopyWith<$Res> {
  _$EmployerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$EmployerStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'EmployerState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String msg) fatalError,
    required TResult Function(String msg, EmployerState lastState) error,
    required TResult Function(List<Employer> employers) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String msg)? fatalError,
    TResult? Function(String msg, EmployerState lastState)? error,
    TResult? Function(List<Employer> employers)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String msg)? fatalError,
    TResult Function(String msg, EmployerState lastState)? error,
    TResult Function(List<Employer> employers)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(FatalError value) fatalError,
    required TResult Function(Error value) error,
    required TResult Function(Success value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(FatalError value)? fatalError,
    TResult? Function(Error value)? error,
    TResult? Function(Success value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(FatalError value)? fatalError,
    TResult Function(Error value)? error,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements EmployerState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$FatalErrorCopyWith<$Res> {
  factory _$$FatalErrorCopyWith(
          _$FatalError value, $Res Function(_$FatalError) then) =
      __$$FatalErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$FatalErrorCopyWithImpl<$Res>
    extends _$EmployerStateCopyWithImpl<$Res, _$FatalError>
    implements _$$FatalErrorCopyWith<$Res> {
  __$$FatalErrorCopyWithImpl(
      _$FatalError _value, $Res Function(_$FatalError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$FatalError(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FatalError implements FatalError {
  const _$FatalError(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'EmployerState.fatalError(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FatalError &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FatalErrorCopyWith<_$FatalError> get copyWith =>
      __$$FatalErrorCopyWithImpl<_$FatalError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String msg) fatalError,
    required TResult Function(String msg, EmployerState lastState) error,
    required TResult Function(List<Employer> employers) success,
  }) {
    return fatalError(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String msg)? fatalError,
    TResult? Function(String msg, EmployerState lastState)? error,
    TResult? Function(List<Employer> employers)? success,
  }) {
    return fatalError?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String msg)? fatalError,
    TResult Function(String msg, EmployerState lastState)? error,
    TResult Function(List<Employer> employers)? success,
    required TResult orElse(),
  }) {
    if (fatalError != null) {
      return fatalError(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(FatalError value) fatalError,
    required TResult Function(Error value) error,
    required TResult Function(Success value) success,
  }) {
    return fatalError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(FatalError value)? fatalError,
    TResult? Function(Error value)? error,
    TResult? Function(Success value)? success,
  }) {
    return fatalError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(FatalError value)? fatalError,
    TResult Function(Error value)? error,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (fatalError != null) {
      return fatalError(this);
    }
    return orElse();
  }
}

abstract class FatalError implements EmployerState {
  const factory FatalError(final String msg) = _$FatalError;

  String get msg;
  @JsonKey(ignore: true)
  _$$FatalErrorCopyWith<_$FatalError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg, EmployerState lastState});

  $EmployerStateCopyWith<$Res> get lastState;
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res>
    extends _$EmployerStateCopyWithImpl<$Res, _$Error>
    implements _$$ErrorCopyWith<$Res> {
  __$$ErrorCopyWithImpl(_$Error _value, $Res Function(_$Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
    Object? lastState = null,
  }) {
    return _then(_$Error(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      null == lastState
          ? _value.lastState
          : lastState // ignore: cast_nullable_to_non_nullable
              as EmployerState,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EmployerStateCopyWith<$Res> get lastState {
    return $EmployerStateCopyWith<$Res>(_value.lastState, (value) {
      return _then(_value.copyWith(lastState: value));
    });
  }
}

/// @nodoc

class _$Error implements Error {
  _$Error(this.msg, this.lastState);

  @override
  final String msg;
  @override
  final EmployerState lastState;

  @override
  String toString() {
    return 'EmployerState.error(msg: $msg, lastState: $lastState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Error &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.lastState, lastState) ||
                other.lastState == lastState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg, lastState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorCopyWith<_$Error> get copyWith =>
      __$$ErrorCopyWithImpl<_$Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String msg) fatalError,
    required TResult Function(String msg, EmployerState lastState) error,
    required TResult Function(List<Employer> employers) success,
  }) {
    return error(msg, lastState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String msg)? fatalError,
    TResult? Function(String msg, EmployerState lastState)? error,
    TResult? Function(List<Employer> employers)? success,
  }) {
    return error?.call(msg, lastState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String msg)? fatalError,
    TResult Function(String msg, EmployerState lastState)? error,
    TResult Function(List<Employer> employers)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(msg, lastState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(FatalError value) fatalError,
    required TResult Function(Error value) error,
    required TResult Function(Success value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(FatalError value)? fatalError,
    TResult? Function(Error value)? error,
    TResult? Function(Success value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(FatalError value)? fatalError,
    TResult Function(Error value)? error,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements EmployerState {
  factory Error(final String msg, final EmployerState lastState) = _$Error;

  String get msg;
  EmployerState get lastState;
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessCopyWith<$Res> {
  factory _$$SuccessCopyWith(_$Success value, $Res Function(_$Success) then) =
      __$$SuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Employer> employers});
}

/// @nodoc
class __$$SuccessCopyWithImpl<$Res>
    extends _$EmployerStateCopyWithImpl<$Res, _$Success>
    implements _$$SuccessCopyWith<$Res> {
  __$$SuccessCopyWithImpl(_$Success _value, $Res Function(_$Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employers = null,
  }) {
    return _then(_$Success(
      null == employers
          ? _value._employers
          : employers // ignore: cast_nullable_to_non_nullable
              as List<Employer>,
    ));
  }
}

/// @nodoc

class _$Success implements Success {
  _$Success(final List<Employer> employers) : _employers = employers;

  final List<Employer> _employers;
  @override
  List<Employer> get employers {
    if (_employers is EqualUnmodifiableListView) return _employers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_employers);
  }

  @override
  String toString() {
    return 'EmployerState.success(employers: $employers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Success &&
            const DeepCollectionEquality()
                .equals(other._employers, _employers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_employers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessCopyWith<_$Success> get copyWith =>
      __$$SuccessCopyWithImpl<_$Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String msg) fatalError,
    required TResult Function(String msg, EmployerState lastState) error,
    required TResult Function(List<Employer> employers) success,
  }) {
    return success(employers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String msg)? fatalError,
    TResult? Function(String msg, EmployerState lastState)? error,
    TResult? Function(List<Employer> employers)? success,
  }) {
    return success?.call(employers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String msg)? fatalError,
    TResult Function(String msg, EmployerState lastState)? error,
    TResult Function(List<Employer> employers)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(employers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(FatalError value) fatalError,
    required TResult Function(Error value) error,
    required TResult Function(Success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(FatalError value)? fatalError,
    TResult? Function(Error value)? error,
    TResult? Function(Success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(FatalError value)? fatalError,
    TResult Function(Error value)? error,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements EmployerState {
  factory Success(final List<Employer> employers) = _$Success;

  List<Employer> get employers;
  @JsonKey(ignore: true)
  _$$SuccessCopyWith<_$Success> get copyWith =>
      throw _privateConstructorUsedError;
}
