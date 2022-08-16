// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'base_data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BaseDataState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialLoadingState,
    required TResult Function() loadingState,
    required TResult Function(T? data) successState,
    required TResult Function(CommonFailure failure) errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialLoadingState,
    TResult Function()? loadingState,
    TResult Function(T? data)? successState,
    TResult Function(CommonFailure failure)? errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialLoadingState,
    TResult Function()? loadingState,
    TResult Function(T? data)? successState,
    TResult Function(CommonFailure failure)? errorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialLoadingState<T> value) initialLoadingState,
    required TResult Function(LoadingState<T> value) loadingState,
    required TResult Function(SuccessState<T> value) successState,
    required TResult Function(ErrorState<T> value) errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialLoadingState<T> value)? initialLoadingState,
    TResult Function(LoadingState<T> value)? loadingState,
    TResult Function(SuccessState<T> value)? successState,
    TResult Function(ErrorState<T> value)? errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLoadingState<T> value)? initialLoadingState,
    TResult Function(LoadingState<T> value)? loadingState,
    TResult Function(SuccessState<T> value)? successState,
    TResult Function(ErrorState<T> value)? errorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseDataStateCopyWith<T, $Res> {
  factory $BaseDataStateCopyWith(
          BaseDataState<T> value, $Res Function(BaseDataState<T>) then) =
      _$BaseDataStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$BaseDataStateCopyWithImpl<T, $Res>
    implements $BaseDataStateCopyWith<T, $Res> {
  _$BaseDataStateCopyWithImpl(this._value, this._then);

  final BaseDataState<T> _value;
  // ignore: unused_field
  final $Res Function(BaseDataState<T>) _then;
}

/// @nodoc
abstract class _$$InitialLoadingStateCopyWith<T, $Res> {
  factory _$$InitialLoadingStateCopyWith(_$InitialLoadingState<T> value,
          $Res Function(_$InitialLoadingState<T>) then) =
      __$$InitialLoadingStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialLoadingStateCopyWithImpl<T, $Res>
    extends _$BaseDataStateCopyWithImpl<T, $Res>
    implements _$$InitialLoadingStateCopyWith<T, $Res> {
  __$$InitialLoadingStateCopyWithImpl(_$InitialLoadingState<T> _value,
      $Res Function(_$InitialLoadingState<T>) _then)
      : super(_value, (v) => _then(v as _$InitialLoadingState<T>));

  @override
  _$InitialLoadingState<T> get _value =>
      super._value as _$InitialLoadingState<T>;
}

/// @nodoc

class _$InitialLoadingState<T> implements InitialLoadingState<T> {
  const _$InitialLoadingState();

  @override
  String toString() {
    return 'BaseDataState<$T>.initialLoadingState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialLoadingState<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialLoadingState,
    required TResult Function() loadingState,
    required TResult Function(T? data) successState,
    required TResult Function(CommonFailure failure) errorState,
  }) {
    return initialLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialLoadingState,
    TResult Function()? loadingState,
    TResult Function(T? data)? successState,
    TResult Function(CommonFailure failure)? errorState,
  }) {
    return initialLoadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialLoadingState,
    TResult Function()? loadingState,
    TResult Function(T? data)? successState,
    TResult Function(CommonFailure failure)? errorState,
    required TResult orElse(),
  }) {
    if (initialLoadingState != null) {
      return initialLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialLoadingState<T> value) initialLoadingState,
    required TResult Function(LoadingState<T> value) loadingState,
    required TResult Function(SuccessState<T> value) successState,
    required TResult Function(ErrorState<T> value) errorState,
  }) {
    return initialLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialLoadingState<T> value)? initialLoadingState,
    TResult Function(LoadingState<T> value)? loadingState,
    TResult Function(SuccessState<T> value)? successState,
    TResult Function(ErrorState<T> value)? errorState,
  }) {
    return initialLoadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLoadingState<T> value)? initialLoadingState,
    TResult Function(LoadingState<T> value)? loadingState,
    TResult Function(SuccessState<T> value)? successState,
    TResult Function(ErrorState<T> value)? errorState,
    required TResult orElse(),
  }) {
    if (initialLoadingState != null) {
      return initialLoadingState(this);
    }
    return orElse();
  }
}

abstract class InitialLoadingState<T> implements BaseDataState<T> {
  const factory InitialLoadingState() = _$InitialLoadingState<T>;
}

/// @nodoc
abstract class _$$LoadingStateCopyWith<T, $Res> {
  factory _$$LoadingStateCopyWith(
          _$LoadingState<T> value, $Res Function(_$LoadingState<T>) then) =
      __$$LoadingStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoadingStateCopyWithImpl<T, $Res>
    extends _$BaseDataStateCopyWithImpl<T, $Res>
    implements _$$LoadingStateCopyWith<T, $Res> {
  __$$LoadingStateCopyWithImpl(
      _$LoadingState<T> _value, $Res Function(_$LoadingState<T>) _then)
      : super(_value, (v) => _then(v as _$LoadingState<T>));

  @override
  _$LoadingState<T> get _value => super._value as _$LoadingState<T>;
}

/// @nodoc

class _$LoadingState<T> implements LoadingState<T> {
  const _$LoadingState();

  @override
  String toString() {
    return 'BaseDataState<$T>.loadingState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingState<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialLoadingState,
    required TResult Function() loadingState,
    required TResult Function(T? data) successState,
    required TResult Function(CommonFailure failure) errorState,
  }) {
    return loadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialLoadingState,
    TResult Function()? loadingState,
    TResult Function(T? data)? successState,
    TResult Function(CommonFailure failure)? errorState,
  }) {
    return loadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialLoadingState,
    TResult Function()? loadingState,
    TResult Function(T? data)? successState,
    TResult Function(CommonFailure failure)? errorState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialLoadingState<T> value) initialLoadingState,
    required TResult Function(LoadingState<T> value) loadingState,
    required TResult Function(SuccessState<T> value) successState,
    required TResult Function(ErrorState<T> value) errorState,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialLoadingState<T> value)? initialLoadingState,
    TResult Function(LoadingState<T> value)? loadingState,
    TResult Function(SuccessState<T> value)? successState,
    TResult Function(ErrorState<T> value)? errorState,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLoadingState<T> value)? initialLoadingState,
    TResult Function(LoadingState<T> value)? loadingState,
    TResult Function(SuccessState<T> value)? successState,
    TResult Function(ErrorState<T> value)? errorState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class LoadingState<T> implements BaseDataState<T> {
  const factory LoadingState() = _$LoadingState<T>;
}

/// @nodoc
abstract class _$$SuccessStateCopyWith<T, $Res> {
  factory _$$SuccessStateCopyWith(
          _$SuccessState<T> value, $Res Function(_$SuccessState<T>) then) =
      __$$SuccessStateCopyWithImpl<T, $Res>;
  $Res call({T? data});
}

/// @nodoc
class __$$SuccessStateCopyWithImpl<T, $Res>
    extends _$BaseDataStateCopyWithImpl<T, $Res>
    implements _$$SuccessStateCopyWith<T, $Res> {
  __$$SuccessStateCopyWithImpl(
      _$SuccessState<T> _value, $Res Function(_$SuccessState<T>) _then)
      : super(_value, (v) => _then(v as _$SuccessState<T>));

  @override
  _$SuccessState<T> get _value => super._value as _$SuccessState<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SuccessState<T>(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$SuccessState<T> implements SuccessState<T> {
  const _$SuccessState({this.data});

  @override
  final T? data;

  @override
  String toString() {
    return 'BaseDataState<$T>.successState(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessState<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$SuccessStateCopyWith<T, _$SuccessState<T>> get copyWith =>
      __$$SuccessStateCopyWithImpl<T, _$SuccessState<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialLoadingState,
    required TResult Function() loadingState,
    required TResult Function(T? data) successState,
    required TResult Function(CommonFailure failure) errorState,
  }) {
    return successState(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialLoadingState,
    TResult Function()? loadingState,
    TResult Function(T? data)? successState,
    TResult Function(CommonFailure failure)? errorState,
  }) {
    return successState?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialLoadingState,
    TResult Function()? loadingState,
    TResult Function(T? data)? successState,
    TResult Function(CommonFailure failure)? errorState,
    required TResult orElse(),
  }) {
    if (successState != null) {
      return successState(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialLoadingState<T> value) initialLoadingState,
    required TResult Function(LoadingState<T> value) loadingState,
    required TResult Function(SuccessState<T> value) successState,
    required TResult Function(ErrorState<T> value) errorState,
  }) {
    return successState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialLoadingState<T> value)? initialLoadingState,
    TResult Function(LoadingState<T> value)? loadingState,
    TResult Function(SuccessState<T> value)? successState,
    TResult Function(ErrorState<T> value)? errorState,
  }) {
    return successState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLoadingState<T> value)? initialLoadingState,
    TResult Function(LoadingState<T> value)? loadingState,
    TResult Function(SuccessState<T> value)? successState,
    TResult Function(ErrorState<T> value)? errorState,
    required TResult orElse(),
  }) {
    if (successState != null) {
      return successState(this);
    }
    return orElse();
  }
}

abstract class SuccessState<T> implements BaseDataState<T> {
  const factory SuccessState({final T? data}) = _$SuccessState<T>;

  T? get data;
  @JsonKey(ignore: true)
  _$$SuccessStateCopyWith<T, _$SuccessState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorStateCopyWith<T, $Res> {
  factory _$$ErrorStateCopyWith(
          _$ErrorState<T> value, $Res Function(_$ErrorState<T>) then) =
      __$$ErrorStateCopyWithImpl<T, $Res>;
  $Res call({CommonFailure failure});

  $CommonFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$ErrorStateCopyWithImpl<T, $Res>
    extends _$BaseDataStateCopyWithImpl<T, $Res>
    implements _$$ErrorStateCopyWith<T, $Res> {
  __$$ErrorStateCopyWithImpl(
      _$ErrorState<T> _value, $Res Function(_$ErrorState<T>) _then)
      : super(_value, (v) => _then(v as _$ErrorState<T>));

  @override
  _$ErrorState<T> get _value => super._value as _$ErrorState<T>;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$ErrorState<T>(
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as CommonFailure,
    ));
  }

  @override
  $CommonFailureCopyWith<$Res> get failure {
    return $CommonFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$ErrorState<T> implements ErrorState<T> {
  const _$ErrorState({required this.failure});

  @override
  final CommonFailure failure;

  @override
  String toString() {
    return 'BaseDataState<$T>.errorState(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorState<T> &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$ErrorStateCopyWith<T, _$ErrorState<T>> get copyWith =>
      __$$ErrorStateCopyWithImpl<T, _$ErrorState<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialLoadingState,
    required TResult Function() loadingState,
    required TResult Function(T? data) successState,
    required TResult Function(CommonFailure failure) errorState,
  }) {
    return errorState(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialLoadingState,
    TResult Function()? loadingState,
    TResult Function(T? data)? successState,
    TResult Function(CommonFailure failure)? errorState,
  }) {
    return errorState?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialLoadingState,
    TResult Function()? loadingState,
    TResult Function(T? data)? successState,
    TResult Function(CommonFailure failure)? errorState,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialLoadingState<T> value) initialLoadingState,
    required TResult Function(LoadingState<T> value) loadingState,
    required TResult Function(SuccessState<T> value) successState,
    required TResult Function(ErrorState<T> value) errorState,
  }) {
    return errorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialLoadingState<T> value)? initialLoadingState,
    TResult Function(LoadingState<T> value)? loadingState,
    TResult Function(SuccessState<T> value)? successState,
    TResult Function(ErrorState<T> value)? errorState,
  }) {
    return errorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLoadingState<T> value)? initialLoadingState,
    TResult Function(LoadingState<T> value)? loadingState,
    TResult Function(SuccessState<T> value)? successState,
    TResult Function(ErrorState<T> value)? errorState,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(this);
    }
    return orElse();
  }
}

abstract class ErrorState<T> implements BaseDataState<T> {
  const factory ErrorState({required final CommonFailure failure}) =
      _$ErrorState<T>;

  CommonFailure get failure;
  @JsonKey(ignore: true)
  _$$ErrorStateCopyWith<T, _$ErrorState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
