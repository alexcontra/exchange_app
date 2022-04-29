import 'package:exchangeapp/network/service/exchange_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

exchangeContainer(String from, String to) {
  TextEditingController currentController = TextEditingController();
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
          },
        ),
      ),
      Obx(() => Text('= ${exchangeController.solution.value}'))
    ]),
  );
}

calculateValue(String from, String to, String value) {
  for (var element in exchangeController.rates) {
    Map<String, dynamic> currentMap = element;
    if (currentMap.values.elementAt(0) == from &&
        currentMap.values.elementAt(1) == to) {
      double doubleValue = double.parse(value);
      double rate = double.parse(currentMap.values.elementAt(2));
      exchangeController.solution.value = (doubleValue * rate).toString();
    } else {
      exchangeController.directExchangeNotFound.value = true;
    }
  }
  if (exchangeController.directExchangeNotFound.value) {}
}

getPairs(int index) {
  Map<String, dynamic> pair = exchangeController.pairs[index];
  return exchangeContainer(
      pair.entries.elementAt(0).value, pair.entries.elementAt(1).value);
}
