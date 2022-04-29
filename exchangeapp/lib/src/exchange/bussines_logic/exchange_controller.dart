import 'package:get/get.dart';

class ExchangeController extends GetxController {
  RxBool isLoading = false.obs;
  List<dynamic> rates = [];
  List<dynamic> pairs = [];
  RxString solution = ''.obs;
  RxBool directExchangeNotFound = false.obs;
}
