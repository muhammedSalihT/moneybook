import 'package:flutter/material.dart';
import 'package:moneybook/Screens/Catogeries/expence_catogery_list.dart';
import 'package:moneybook/Screens/Catogeries/income_catogeri_list.dart';

class ScreenCategories extends StatefulWidget {
  const ScreenCategories({Key? key}) : super(key: key);

  @override
  State<ScreenCategories> createState() => _ScreenCategoriesState();
}

class _ScreenCategoriesState extends State<ScreenCategories>
    with SingleTickerProviderStateMixin {
  late TabController _tabcontroller;

  @override
  void initState() {
    _tabcontroller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          indicatorColor: Colors.orange,
            controller: _tabcontroller, tabs: [Text("INCOME"), Text("EXPENCE")]),
            Expanded(
              child: TabBarView(
                controller: _tabcontroller,
                children: const [
                IncomeCatogeryList(),
                ExpenceCatogeryList(),
              ]),
            )
      ],
    );
  }
}
