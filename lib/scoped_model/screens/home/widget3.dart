import 'package:flutter/material.dart';

import 'package:scoped_model/scoped_model.dart';
import 'package:state_management_example/scoped_model/scoped_model/scoped_counters.dart';
//import 'package:states/scoped_model/scoped_counters.dart';

class Widget3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<ScopedCounter> (
        builder: (context,child,model) =>
            Text('Widget3 counter is ${model.counter3.count}')
    );
  }
}