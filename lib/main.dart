import 'package:flutter/material.dart';
import 'package:state_management_example/inherited_widgets/inherited_widgets.dart';
import 'package:state_management_example/redux/redux_homePage.dart';
import 'package:state_management_example/scoped_model/screens/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'State Management Approaches',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,

        routes: <String, WidgetBuilder>{

          "/a": (BuildContext context) => new ScopedModelHome("ScopedModelHome"),

        },

      home: Scaffold(
        appBar: AppBar(
          title: Text('State Management in Flutter'),

        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                child: ListTile(
                  trailing: Icon(Icons.arrow_forward_ios),
                  title: Text(
                    'ScopedModel',
                    style: TextStyle(
                      fontSize: 18.0
                    ),
                  ),
                  onTap: () => Navigator.of(context).pushNamed("/a"),
                  selected: true,
                ),
              ),
              Divider(),
              Card(
                child: ListTile(
                  trailing: Icon(Icons.arrow_forward_ios),
                  title: Text(
                    'Inherited Widgets',style: TextStyle(
                      fontSize: 18.0
                  ),
                  ),
                  onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => InheritedHomePage()),

                    );
                  },
                  selected: true,
                ),
              ),Divider(),
              Card(
                child: ListTile(
                  trailing: Icon(Icons.arrow_forward_ios),
                  title: Text(
                    'Provider Package',style: TextStyle(
                      fontSize: 18.0
                  ),
                  ),

                  selected: true,
                ),
              ),
              Divider(),
              Card(
                child: ListTile(
                  trailing: Icon(Icons.arrow_forward_ios),
                  title: Text(
                    'BLoC',style: TextStyle(
                      fontSize: 18.0
                  ),
                  ),

                  selected: true,
                ),
              ),
              Divider(),
              Card(
                child: ListTile(
                  trailing: Icon(Icons.arrow_forward_ios),
                  title: Text(
                    'MobX',style: TextStyle(
                      fontSize: 18.0
                  ),
                  ),

                  selected: true,
                ),
              ),
              Divider(),
              Card(
                child: ListTile(
                  trailing: Icon(Icons.arrow_forward_ios),
                  title: Text(
                    'Redux',style: TextStyle(
                      fontSize: 18.0
                  ),
                  ),
                  onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ReduxHomePage()),

                    );
                  },
                  selected: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}