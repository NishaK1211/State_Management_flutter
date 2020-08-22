import 'package:flutter/material.dart';
import 'package:state_management_example/mobx/pages/counter_page.dart';

class MobxHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterPage(),
    );
  }
}