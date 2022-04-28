import 'package:exchangeapp/network/response/exchange_repsponse.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'exchange_api.g.dart';

@RestApi()
abstract class ExchangeApi {
  factory ExchangeApi(Dio dio, {String baseUrl}) = _ExchangeApi;

  @GET('/json/1')
  Future<ExchangeRepsponse> exchangeApi({
    @Body() required Map<String, dynamic> content,
  });
}
