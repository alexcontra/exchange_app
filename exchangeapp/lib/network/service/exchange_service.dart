import 'package:exchangeapp/network/api/exchange_api.dart';
import 'package:exchangeapp/network/response/exchange_repsponse.dart';
import 'package:logger/logger.dart';
import 'package:dio/dio.dart';

class ExchangeService {
  Future<ExchangeRepsponse> getMeSrvice(String token) async {
    Logger logger = Logger(
      printer: PrettyPrinter(
        methodCount: 2, // number of method calls to be displayed
        errorMethodCount: 8, // number of method calls if stacktrace is provided
        lineLength: 50, // width of the output
        colors: true, // Colorful log messages
        printEmojis: true, // Print an emoji for each log message
        printTime: true, // Should each log print contain a timestamp
      ),
    );
    final dio = Dio();
    final client = ExchangeApi(dio);
    dio.options = BaseOptions(baseUrl: 'https://alsys-be.herokuapp.com/v1');
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
