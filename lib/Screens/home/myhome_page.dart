import 'package:flutter/material.dart';
import 'package:moneybook/Screens/Catogeries/catogeries.dart';
import 'package:moneybook/Screens/Transactions/transaction_page.dart';
import 'package:moneybook/Screens/home/Widgets/Bottom_navigation.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  final _page = const [ScreenTrans(), ScreenCategories()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'moneybook',
            style: TextStyle(color: Colors.orange, fontSize: 30),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.black,
        bottomNavigationBar: const MoneyBookBottomNavigation(),
        body: SafeArea(
            child: ValueListenableBuilder(
                valueListenable:
                    MoneyBookBottomNavigation.selectedIndexNotifier,
                builder: (BuildContext ctx, int updatedIndex, _) {
                  return _page[updatedIndex];
                })),
        floatingActionButton: Padding(
          padding:
              EdgeInsets.only(right: MediaQuery.of(context).size.width * .38),
          child: FloatingActionButton(
            backgroundColor: Colors.orange,
            onPressed: () {
              if (MoneyBookBottomNavigation.selectedIndexNotifier.value == 0) {
              } else {}
            },
            child: const Icon(
              Icons.add,
              color: Colors.black,
            ),
          ),
        ));
  }
}
