import 'package:flutter/material.dart';
import 'package:listview/user.dart';
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
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return UserTile(name: users[index].name, profession: users[index].profession, image: users[index].image ,);
            // return UserTile(
            //   image: users[index].image,
            //     name: users[index].name, profession: users[index].profession);
          }),

      // Combo of the the Two ListViw
      // ListView. Seperated
      // body: ListView.separated(
      //     itemBuilder: (BuildContext context, int index) {
      //       return newWidget(index);
      //     },
      //     separatorBuilder: (BuildContext context, int index) {
      //       return (index + 2) % 3 == 0
      //           ? ListTile(
      //               leading: const CircleAvatar(
      //                 backgroundColor: Colors.orange,
      //                 child: Text(
      //                   'A',
      //                   style: TextStyle(
      //                       fontSize: 20,
      //                       fontWeight: FontWeight.bold,
      //                       color: Colors.white),
      //                 ),
      //               ),
      //               title: const Text('Advertiser'),
      //               subtitle: const Text('Some information about add'),
      //               trailing: Container(
      //                 color: Colors.orange,
      //                 alignment: Alignment.center,
      //                 width: 30,
      //                 height: 20,
      //                 child: const Text(
      //                   'Ad',
      //                   style: TextStyle(
      //                     fontSize: 12,
      //                     color: Colors.white,
      //                   ),
      //                 ),
      //               ),
      //             )
      //           : const SizedBox(width: 0, height: 0,);
      //     },
      //     itemCount: users.length)
      // body: ListView.custom(
      //     childrenDelegate: SliverChildListDelegate([
      // newWidget('Adetoyese', 0, Colors.red)

      // ])),
    );
  }
}

// Widget newWidget({String? name, int? index, Color? color}) {
//   return Container(
//     height: 245,
//     margin: const EdgeInsets.all(8),
//     alignment: Alignment.center,
//     color: color,
//     child: Text('$name No $index'),
//   );
// }
class UserTile extends StatelessWidget {
  const UserTile({super.key, this.name, this.profession, this.image});
  final String? name;
  final String? profession;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 10,
        backgroundImage: AssetImage('$image'),
      ),
      title: Text('$name'),
      subtitle: Text('$profession'),
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }
}
