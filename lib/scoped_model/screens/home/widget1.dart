import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:state_management_example/scoped_model/scoped_model/scoped_counters.dart';


class Widget1 extends StatelessWidget {
  @override
      Widget build(BuildContext context) {
    return ScopedModelDescendant<ScopedCounter> (
      builder: (context,child,model) =>
          Text('Widget1 counter is ${model.counter1.count}')
    );
  }
}