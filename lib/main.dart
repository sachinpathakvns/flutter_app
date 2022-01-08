import 'package:flutter/material.dart';

void main() {
  //Main is the start of the app just as  in C and other programming languages
  runApp(const MyApp());// You will run either a stateless widget or a stateful widget
  //Stateless widget will allow more pages to be added. If a single page is needed you can make a stateful widget directly
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) //Every widget whether stateless or stateful has a build method. This output is shown on screen

  {
    return MaterialApp//Main aidget will always be a material app
      (
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
class MyHomePage extends StatefulWidget // A steteless widget cannot change its output. Stateful can
{
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>//Every stateful widget has a state class that manages its state.
{
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context)//The output of the build method will go on screen
  {



    return SafeArea(
      child: Scaffold //The main part starts with a scaffold.
        (
        appBar: AppBar(//Title bar
          title: Text("Sachn Ka App"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Shubham is CR:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),


        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
