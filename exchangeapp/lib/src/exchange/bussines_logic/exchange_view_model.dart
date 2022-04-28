import 'package:exchangeapp/network/response/exchange_repsponse.dart';
import 'package:exchangeapp/network/service/exchange_service.dart';
import 'package:exchangeapp/src/exchange/bussines_logic/exchange_controller.dart';
import 'package:get/get.dart';

final ExchangeController exchangeController = Get.find();
Future<void> populateLists() async {
  ExchangeRepsponse exchangeRepsponse =
      await ExchangeService().exchangeService();
  exchangeController.pairs.value =
      exchangeRepsponse.content?.entries.elementAt(0) as List<dynamic>;
  exchangeController.rates.value =
      exchangeRepsponse.content?.entries.elementAt(1) as List<dynamic>;
}
