import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchange_repsponse.freezed.dart';
part 'exchange_repsponse.g.dart';

@freezed
class ExchangeRepsponse with _$ExchangeRepsponse {
  factory ExchangeRepsponse({
    String? from,
    String? to,
    String? rate,
  }) = _ExchangeRepsponse;

  factory ExchangeRepsponse.fromJson(Map<String, dynamic> json) =>
      _$ExchangeRepsponseFromJson(json);
}
