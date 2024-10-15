import 'package:flutter/material.dart';
import 'package:listview/user.dart';

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
        useMaterial3: true,
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
      // LISTVIEW NORMAL
      // body: ListView(
      //   scrollDirection: Axis.vertical,
      //   children:  <Widget>[

      //     Container(height: 250, color: Colors.red,),
      //      Container(
      //         height: 250,
      //         color: Colors.black,
      //       ),
      //         Container(
      //         height: 250,
      //         color: Colors.yellow,
      //       ),
      //         Container(
      //         height: 250,
      //         color: Colors.green,
      //       ),
      //         Container(
      //         height: 250,
      //         color: Colors.amber,
      //       ),

      //         Container(
      //         height: 250,
      //         color: Colors.brown,
      //       ),
      //   ],
      // )
// LISTVIEW.BUILDER
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (BuildContext context, int index) {
            return  ListTile(
              leading:const CircleAvatar(
                backgroundImage: AssetImage('images/laptop.jpg'),
              ),
              title: Text(users[index].name),
              subtitle: Text(users[index].profession),
            );
          }),
    );
  }
}
