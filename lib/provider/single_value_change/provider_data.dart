import 'package:first_app/provider/single_value_change/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderData extends StatefulWidget {
  const ProviderData({super.key});

  @override
  State<ProviderData> createState() => _ProviderDataState();
}

class _ProviderDataState extends State<ProviderData> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider Data',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider(

          //* Change Notifier Provider h context depand and provider class ka object dena h..
          create: (context) => CounterProvider(),
          child: MyHomePage()),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Provider Count Basic"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              //* yaha par value ko get kar rhe h qki yaha par value ko display karna hai..

              //* by default listen ki value true yaha par to listen karna jaruri h yaha but jaha set kar rhe h waha..
              '${Provider.of<CounterProvider>(context).countValue}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //* <> yaha par type ko dekhna h qki ap app me 10 provider use kar skte h isliye type dena jaruri h..

          Provider.of<CounterProvider>(context, listen: false).countValue = 1;

          //* = ke left side me h to set function call hota matlab ki wo ki value ko denge waha par..
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
