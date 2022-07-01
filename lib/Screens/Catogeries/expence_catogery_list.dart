import 'package:flutter/material.dart';

class ExpenceCatogeryList extends StatelessWidget {
  const ExpenceCatogeryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return  ListView.separated(itemBuilder:(ctx, index){
      return const Card(
        child: ListTile(leading: Text("12 DEC"),
        title: Text("1000"),
        subtitle: Text("Travel"),
         trailing: Icon(Icons.delete)
        ),
      );
    },
     separatorBuilder:(ctx, index){
      return const SizedBox(height: 10,);
     },
      itemCount: 10);
  }
}