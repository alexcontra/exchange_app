import 'package:exchangeapp/network/api/exchange_api.dart';
import 'package:exchangeapp/network/response/exchange_repsponse.dart';
import 'package:exchangeapp/src/exchange/bussines_logic/exchange_controller.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:dio/dio.dart';

final ExchangeController exchangeController = Get.put(ExchangeController());

class ExchangeService {
  Future<ExchangeRepsponse> exchangeService() async {
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
    late ExchangeRepsponse exchangeRepsponse;
    exchangeController.isLoading.value = true;
    try {
      exchangeRepsponse = await client.exchangeApi();
      exchangeController.pairs = exchangeRepsponse.pairs as List<dynamic>;
      exchangeController.rates = exchangeRepsponse.rates as List<dynamic>;
      logger.i('Exchange service: $exchangeRepsponse');
    } on DioError catch (e) {
      logger.e('exchange service error: $e');
    } finally {
      exchangeController.isLoading.value = false;
    }

    return exchangeRepsponse;
  }
}
