import 'package:exchangeapp/network/api/exchange_api.dart';
import 'package:exchangeapp/network/response/exchange_repsponse.dart';
import 'package:logger/logger.dart';
import 'package:dio/dio.dart';

class ExchangeService {
  Future<ExchangeRepsponse> getMeSrvice(String token) async {
    Logger logger = Logger(
      printer: PrettyPrinter(
        methodCount: 2,
        errorMethodCount: 8,
        lineLength: 50,
        colors: true,
        printEmojis: true,
        printTime: true,
      ),
    );
    final dio = Dio();
    final client = ExchangeApi(dio);
    dio.options = BaseOptions(baseUrl: 'http://0gzg3.mocklab.io');
    Map<String, dynamic> body = {};
    late ExchangeRepsponse exchangeRepsponse;
    try {
      exchangeRepsponse = await client.exchangeApi(content: body);
      logger.i('Exchange service: $exchangeRepsponse');
    } on DioError catch (e) {
      logger.e('exchange service error: $e');
    }

    return exchangeRepsponse;
  }
}
