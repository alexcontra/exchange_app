import 'package:exchangeapp/network/service/exchange_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

exchangeContainer(String from, String to) {
  TextEditingController currentController = TextEditingController();
  RxString currentValue = ''.obs;
  return Container(
    height: 100.0,
    margin: const EdgeInsets.only(left: 22.0, right: 22.0),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text('From $from to $to'),
      Padding(
        padding: const EdgeInsets.only(right: 100.0),
        child: TextField(
          controller: currentController,
          keyboardType: TextInputType.number,
          onChanged: (value) {
            calculateValue(from, to, value);
            currentValue.value = exchangeController.solution.value;
          },
        ),
      ),
      Obx(() => Text('= $currentValue'))
    ]),
  );
}

calculateValue(String from, String to, String value) {
  for (var element in exchangeController.rates) {
    Map<String, dynamic> currentMap = element;
    if (currentMap.values.elementAt(0) == from &&
        currentMap.values.elementAt(1) == to) {
      exchangeController.solution.value =
          (double.parse(value) * double.parse(currentMap.values.elementAt(2)))
              .toString();
      exchangeController.directExchangeNotFound.value = false;
    } else {
      exchangeController.directExchangeNotFound.value = true;
    }
  }
  if (exchangeController.directExchangeNotFound.value) {
    String firstRate = '';
    String secondRate = '';
    String newToChange = '';
    for (var element in exchangeController.rates) {
      Map<String, dynamic> currentMap = element;
      if (currentMap.values.elementAt(0) == from) {
        firstRate = currentMap.values.elementAt(2);
        newToChange = currentMap.values.elementAt(1);
      }
    }
    if (newToChange.isNotEmpty) {
      for (var element in exchangeController.rates) {
        Map<String, dynamic> currentMap = element;
        if (currentMap.values.elementAt(1) == newToChange) {
          secondRate = currentMap.values.elementAt(2);
        }
      }
      exchangeController.solution.value = (double.parse(firstRate) *
              double.parse(secondRate) *
              double.parse(value))
          .toString();
    }
  }
}

getPairs(int index) {
  Map<String, dynamic> pair = exchangeController.pairs[index];
  return exchangeContainer(
      pair.entries.elementAt(0).value, pair.entries.elementAt(1).value);
}
