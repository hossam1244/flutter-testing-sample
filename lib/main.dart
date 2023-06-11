import 'package:flutter/material.dart';
import 'package:flutter_testing_sample/unit_testing/counter.dart';
import 'package:flutter_testing_sample/unit_testing/counter_screen.dart';
import 'package:flutter_testing_sample/unit_testing_mocking/unit_testing_mocking_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Testing Sample'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: _buildList(),
      ),

    );
  }

   Widget _buildList() => ListView(
    children: [
      _unitTesting(),
      _unitTestingMocking(),
      _integrationTesting(),
       _widgetTesting(),
    ]);

  _unitTesting() {
    return ListTile(
      title: Text('Unit Testing'),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CounterScreen(title: 'Unit Testing',)),
        );
      },
    );
  }

  _unitTestingMocking() {
    return ListTile(
      title: Text('Unit Testing Mocking'),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => UnitTestingMocking()),
        );
      },
    );
  }

  _integrationTesting() {
    return ListTile(
      title: Text('Integration Testing'),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => UnitTestingMocking()),
        );
      },
    );
  }

  _widgetTesting() {
    return ListTile(
      title: Text('Widget Testing'),
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => Inte()),
        // );
      },
    );
  }
}
