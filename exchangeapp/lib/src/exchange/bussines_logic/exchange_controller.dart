import 'package:get/get.dart';

class ExchangeController extends GetxController {
  RxBool isLoading = false.obs;
  RxList<dynamic> rates = [].obs;
  RxList<dynamic> pairs = [].obs;
}
