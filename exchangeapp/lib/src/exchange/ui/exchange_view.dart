import 'package:exchangeapp/src/exchange/bussines_logic/exchange_view_model.dart';
import 'package:flutter/material.dart';

class ExchangePage extends StatefulWidget {
  const ExchangePage({Key? key}) : super(key: key);

  @override
  State<ExchangePage> createState() => _ExchangePageState();
}

class _ExchangePageState extends State<ExchangePage> {
  @override
  Widget build(BuildContext context) {
    return exchangeController.isLoading.value
        ? const Scaffold(
            body: CircularProgressIndicator(),
          )
        : Scaffold(
            body: FutureBuilder(
              future: populateLists(),
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                if (snapshot.hasData) {
                  return SizedBox();
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
          );
  }
}
