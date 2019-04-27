import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/firstScreen/Recommend.dart';
import 'package:flutter_book/widgets/firstScreen/HotProduct.dart';

class FirstScreenContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 24.0, right: 24.0, top: 20.0, bottom: 40),
          child: Column(
            children: <Widget>[Recommend(), HotProduct()],
          ),
        ),
      ],
    );
  }
}
