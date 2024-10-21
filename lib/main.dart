import 'package:flutter/material.dart';
// import 'package:listview/user.dart';
// import 'package:listview/user.dart';

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
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    _scrollController.addListener(() {
      // ignore: avoid_print
      print(_scrollController.offset);
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      // body: Scrollbar(
      //   thickness: 30,
      //   interactive: true,
      //   child: ListView.custom(
      //       childrenDelegate:
      //           SliverChildBuilderDelegate((BuildContext context, int index) {
      //     return UserDelegateTile(
      //         name: users[index].name,
      //         image: users[index].image,
      //         profession: users[index].profession);
      //   }, childCount: users.length)),
      // ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            alignment: Alignment.center,
            height: 150,
            color: index % 2 == 0 ? Colors.blueAccent : Colors.orangeAccent,
            child: Text(
              'Item ${index + 1}',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          );
        },
      ),
      // floatingActionButton: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
      //   children: [
      //     FloatingActionButton(
      //       onPressed: () {
      //         _scrollController
      //             .jumpTo(_scrollController.position.minScrollExtent);
      //       },
      //       child:const Icon(Icons.arrow_upward),
      //     ),
      //     FloatingActionButton(
      //       onPressed: () {
      //           _scrollController
      //             .jumpTo(_scrollController.position.maxScrollExtent);
      //       },
      //       child:const Icon(Icons.arrow_downward),
      //     )
      //   ],
      // )
    );
  }
}

// class UserDelegateTile extends StatelessWidget {
//   const UserDelegateTile(
//       {super.key,
//       required this.name,
//       required this.image,
//       required this.profession});
//   final String? name;
//   final String? image;
//   final String? profession;
//   @override
//   Widget build(BuildContext context) {
//     return  ListTile(
//         leading: CircleAvatar(
//           // radius: 70,
//         backgroundColor: Colors.teal,
//           backgroundImage: AssetImage('$image'),
//         ),
//         title: Text('$name'),
//         subtitle: Text('$profession'),
//         trailing: Icon(Icons.arrow_forward_ios),
//       );
    
//   }
// }
