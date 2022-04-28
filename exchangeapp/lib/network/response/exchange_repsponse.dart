import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchange_repsponse.freezed.dart';
part 'exchange_repsponse.g.dart';

@freezed
class ExchangeRepsponse with _$ExchangeRepsponse {
  factory ExchangeRepsponse({
    List<dynamic>? rates,
    List<dynamic>? pairs,
  }) = _ExchangeRepsponse;

  factory ExchangeRepsponse.fromJson(Map<String, dynamic> json) =>
      _$ExchangeRepsponseFromJson(json);
}
