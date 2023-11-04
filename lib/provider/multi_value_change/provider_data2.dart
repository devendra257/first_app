import 'package:first_app/provider/multi_value_change/counter_provider_two.dart';
import 'package:first_app/provider/single_value_change/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderData2 extends StatefulWidget {
  const ProviderData2({super.key});

  @override
  State<ProviderData2> createState() => _ProviderData2State();
}

class _ProviderData2State extends State<ProviderData2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider Multi Data',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider(
          create: (context) => MultiCountProvider(), child: MyHomePage()),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Multi Provider Count"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '${Provider.of<MultiCountProvider>(context).getCountValue()}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              onPressed: () {
                Provider.of<MultiCountProvider>(context, listen: false)
                    .decrementCount();
              },
              tooltip: 'Decrement',
              child: const Icon(Icons.remove),
            ),
            FloatingActionButton(
              onPressed: () {
                Provider.of<MultiCountProvider>(context, listen: false)
                    .incrementCount();
              },
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          ],
        ));
  }
}
