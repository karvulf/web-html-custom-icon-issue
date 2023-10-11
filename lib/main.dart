import 'package:flutter/material.dart';
import 'package:web_html_icon_alignment_issue/my_flutter_app_icons.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false, // false or true doesn't matter
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Icons'),
            _getIconTextRow(icon: Icons.arrow_back),
            const SizedBox(height: 8.0),
            const Text('Custom Icons'),
            _getIconTextRow(icon: MyFlutterApp.arrow_back),
          ],
        ),
      ),
    );
  }

  Widget _getIconTextRow({required IconData icon}) {
    return Row(
      children: [
        ColoredBox(
          color: Colors.red,
          child: Text(
            'IIIIII',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
        ColoredBox(
          color: Colors.green,
          child: Icon(icon),
        ),
      ],
    );
  }
}
