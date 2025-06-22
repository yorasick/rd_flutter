import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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
  int _counter = 0;
  final TextEditingController _incrementController = TextEditingController(
    text: '1',
  );

  void _incrementCounter() {
    setState(() {
      int incrementValue = int.tryParse(_incrementController.text) ?? 1;
      _counter += incrementValue;
    });
  }

  @override
  void dispose() {
    _incrementController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('You have pushed the button this many times:'),
                  Text(
                    '$_counter',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 32.0,
              left: 16.0,
              right: 16.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      int decrementValue =
                          int.tryParse(_incrementController.text) ?? 1;
                      _counter -= decrementValue;
                    });
                  },
                  tooltip: 'Decrement',
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(width: 24),
                SizedBox(
                  width: 200,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          final currentValue =
                              int.tryParse(_incrementController.text) ?? 1;
                          _incrementController.text = '${currentValue - 1}';
                        },
                        icon: const Icon(Icons.remove),
                      ),
                      Expanded(
                        child: Material(
                          child: TextField(
                            controller: _incrementController,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            enabled: true,
                            textInputAction: TextInputAction.done,
                            decoration: const InputDecoration(
                              labelText: 'By',
                              floatingLabelAlignment:
                                  FloatingLabelAlignment.center,
                              hintText: 'Enter value',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          final currentValue =
                              int.tryParse(_incrementController.text) ?? 1;
                          _incrementController.text = '${currentValue + 1}';
                        },
                        icon: const Icon(Icons.add),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 24),
                FloatingActionButton(
                  onPressed: _incrementCounter,
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
