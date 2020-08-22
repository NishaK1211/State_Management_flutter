import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:state_management_example/scoped_model/scoped_model/scoped_counters.dart';
import 'widget1.dart';
import 'widget2.dart';
import 'widget3.dart';



class ScopedModelHome extends StatelessWidget {
  final ScopedCounter scopedCounter = ScopedCounter();

  ScopedModelHome(String s);

  @override
  Widget build(BuildContext context) {
    return ScopedModel<ScopedCounter>(
      model: scopedCounter,
      child: Scaffold(
        appBar: AppBar(
          title: Text('hello'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Widget1(),
              Widget2(),
              Widget3(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => scopedCounter.increment(),
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}