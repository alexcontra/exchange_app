// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exchange_repsponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExchangeRepsponse _$ExchangeRepsponseFromJson(Map<String, dynamic> json) {
  return _ExchangeRepsponse.fromJson(json);
}

/// @nodoc
class _$ExchangeRepsponseTearOff {
  const _$ExchangeRepsponseTearOff();

  _ExchangeRepsponse call({List<dynamic>? rates, List<dynamic>? pairs}) {
    return _ExchangeRepsponse(
      rates: rates,
      pairs: pairs,
    );
  }

  ExchangeRepsponse fromJson(Map<String, Object?> json) {
    return ExchangeRepsponse.fromJson(json);
  }
}

/// @nodoc
const $ExchangeRepsponse = _$ExchangeRepsponseTearOff();

/// @nodoc
mixin _$ExchangeRepsponse {
  List<dynamic>? get rates => throw _privateConstructorUsedError;
  List<dynamic>? get pairs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExchangeRepsponseCopyWith<ExchangeRepsponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeRepsponseCopyWith<$Res> {
  factory $ExchangeRepsponseCopyWith(
          ExchangeRepsponse value, $Res Function(ExchangeRepsponse) then) =
      _$ExchangeRepsponseCopyWithImpl<$Res>;
  $Res call({List<dynamic>? rates, List<dynamic>? pairs});
}

/// @nodoc
class _$ExchangeRepsponseCopyWithImpl<$Res>
    implements $ExchangeRepsponseCopyWith<$Res> {
  _$ExchangeRepsponseCopyWithImpl(this._value, this._then);

  final ExchangeRepsponse _value;
  // ignore: unused_field
  final $Res Function(ExchangeRepsponse) _then;

  @override
  $Res call({
    Object? rates = freezed,
    Object? pairs = freezed,
  }) {
    return _then(_value.copyWith(
      rates: rates == freezed
          ? _value.rates
          : rates // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      pairs: pairs == freezed
          ? _value.pairs
          : pairs // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
abstract class _$ExchangeRepsponseCopyWith<$Res>
    implements $ExchangeRepsponseCopyWith<$Res> {
  factory _$ExchangeRepsponseCopyWith(
          _ExchangeRepsponse value, $Res Function(_ExchangeRepsponse) then) =
      __$ExchangeRepsponseCopyWithImpl<$Res>;
  @override
  $Res call({List<dynamic>? rates, List<dynamic>? pairs});
}

/// @nodoc
class __$ExchangeRepsponseCopyWithImpl<$Res>
    extends _$ExchangeRepsponseCopyWithImpl<$Res>
    implements _$ExchangeRepsponseCopyWith<$Res> {
  __$ExchangeRepsponseCopyWithImpl(
      _ExchangeRepsponse _value, $Res Function(_ExchangeRepsponse) _then)
      : super(_value, (v) => _then(v as _ExchangeRepsponse));

  @override
  _ExchangeRepsponse get _value => super._value as _ExchangeRepsponse;

  @override
  $Res call({
    Object? rates = freezed,
    Object? pairs = freezed,
  }) {
    return _then(_ExchangeRepsponse(
      rates: rates == freezed
          ? _value.rates
          : rates // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      pairs: pairs == freezed
          ? _value.pairs
          : pairs // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExchangeRepsponse implements _ExchangeRepsponse {
  _$_ExchangeRepsponse({this.rates, this.pairs});

  factory _$_ExchangeRepsponse.fromJson(Map<String, dynamic> json) =>
      _$$_ExchangeRepsponseFromJson(json);

  @override
  final List<dynamic>? rates;
  @override
  final List<dynamic>? pairs;

  @override
  String toString() {
    return 'ExchangeRepsponse(rates: $rates, pairs: $pairs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExchangeRepsponse &&
            const DeepCollectionEquality().equals(other.rates, rates) &&
            const DeepCollectionEquality().equals(other.pairs, pairs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(rates),
      const DeepCollectionEquality().hash(pairs));

  @JsonKey(ignore: true)
  @override
  _$ExchangeRepsponseCopyWith<_ExchangeRepsponse> get copyWith =>
      __$ExchangeRepsponseCopyWithImpl<_ExchangeRepsponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExchangeRepsponseToJson(this);
  }
}

abstract class _ExchangeRepsponse implements ExchangeRepsponse {
  factory _ExchangeRepsponse({List<dynamic>? rates, List<dynamic>? pairs}) =
      _$_ExchangeRepsponse;

  factory _ExchangeRepsponse.fromJson(Map<String, dynamic> json) =
      _$_ExchangeRepsponse.fromJson;

  @override
  List<dynamic>? get rates;
  @override
  List<dynamic>? get pairs;
  @override
  @JsonKey(ignore: true)
  _$ExchangeRepsponseCopyWith<_ExchangeRepsponse> get copyWith =>
      throw _privateConstructorUsedError;
}
