import 'package:flutter/material.dart';

class ScreenTrans extends StatelessWidget {
  const ScreenTrans({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.orange,
                border: Border.all(),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            height: MediaQuery.of(context).size.width * .4,
            width: double.infinity,
            child: Row(
              children: [
                Text("WALLET BALENCE:",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight:FontWeight.bold ),),
                Text('1000',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight:FontWeight.bold ),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
