import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:state_management_example/mobx/store/counter/counter.dart';

  final Counter counter = Counter();
  class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text('MobX Counter Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Counter',
                style: TextStyle(fontSize: 30.0),
              ),
              Observer(
                builder: (_) =>
                    Text('${counter.value}', style: TextStyle(fontSize: 42.0)),
              ),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton.icon(
                    icon: Icon(Icons.add),
                    label: Text('Add'),
                    onPressed: counter.increment,
                  ),
                  FlatButton.icon(
                    icon: Icon(Icons.remove),
                    label: Text('Remove'),
                    onPressed: counter.decrement,
                  ),
                ],
              )
            ],
          ),
        ),
        );
  }
}