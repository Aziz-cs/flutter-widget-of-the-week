import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo DataTable',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo DataTable Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Normal Asset Image:'),
            Image.asset(
              'asset/img/owl.jpg',
              height: 150.0,
              semanticLabel: 'Owl',
            ),
            Text('colorBlendMode: BlendMode.darken Asset Image:'),
            Image.asset(
              'asset/img/owl.jpg',
              height: 150.0,
              colorBlendMode: BlendMode.darken,
            ),
            Text('Normal Network Image:'),
            Image.network(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
              height: 150.0,
              loadingBuilder: (context, child, loadingProgress) {
                return loadingProgress == null
                    ? child
                    : Center(child: CircularProgressIndicator());
              },
            ),
          ],
        ),
      ),
    );
  }
}
