import 'package:first_app/provider/multi_value_change/counter_provider_two.dart';
import 'package:first_app/provider/second_page_provider/second_page.dart';
import 'package:first_app/provider/second_page_provider/second_page_counter_provider.dart';
import 'package:first_app/provider/single_value_change/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderData3 extends StatefulWidget {
  const ProviderData3({super.key});

  @override
  State<ProviderData3> createState() => _ProviderData3State();
}

class _ProviderData3State extends State<ProviderData3> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      //* yaha parent ko change Notifier Provider kar rahe h qki hame sab child usko data transfer karna h..
      create: (context) => MultiCountProvider2(),
      child: MaterialApp(
          title: 'Provider Multi Data',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: MyHomePage()),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('Home Page Built');
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
              Consumer<MultiCountProvider2>(
                //*  context ka use bhut jada h qki context hi batye ki kisko built karna h or consumet ka context us karna h..
                builder: (ctx, provider, ___) {
                  print('Consumer Built');
                  return Text(
                    //* context ke bad provider use karenge second me to isliye provider use kar rahe...
                    '${provider.getCountValue()}',
                    // "${ctx.watch<MultiCountProvider2>().getCountValue()}",
                    // '${Provider.of<MultiCountProvider2>(context).getCountValue()}',
                    style: Theme.of(context).textTheme.headlineMedium,
                  );
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondPage(),
                      ),
                    );
                  },
                  child: Text('Next Page'))
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              onPressed: () {
                context.read<MultiCountProvider2>().decrementCount();
                // Provider.of<MultiCountProvider2>(context, listen: false)
                //     .decrementCount();
              },
              tooltip: 'Decrement',
              child: const Icon(Icons.remove),
            ),
            FloatingActionButton(
              onPressed: () {
                context.read<MultiCountProvider2>().incrementCount();
              },
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          ],
        ));
  }
}
