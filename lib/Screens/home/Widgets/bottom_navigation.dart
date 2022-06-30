import 'package:flutter/material.dart';

class MoneyBookBottomNavigation extends StatelessWidget {
  const MoneyBookBottomNavigation({Key? key}) : super(key: key);

  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedIndexNotifier,
      builder: (BuildContext ctx, int updatedIndex, Widget? _) {
        return BottomNavigationBar(
          backgroundColor: Colors.black,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.white,
            currentIndex: updatedIndex,
            onTap: (newIndex) {
              selectedIndexNotifier.value = newIndex;
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: "Transations"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.category), label: "Categories")
            ]);
      },
    );
  }
}
