import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class ProviderHomePage extends StatelessWidget {

@override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create : (context) => Counter(),
      child : HomePage(),
    );

}
}

class Counter with ChangeNotifier {
  int value = 0;

  void increment() {
    value += 1;
    notifyListeners();
  }
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider Package',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );

  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Example'),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center ,
          children: <Widget>[
            Text('You have pushed the button this many times:'),
            Consumer<Counter>(
                builder: (context,counter,child) => Text(
                  '${counter.value}',
                  style: Theme.of(context).textTheme.headline4,
                )
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            Provider.of<Counter>(context,listen : false).increment(),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
