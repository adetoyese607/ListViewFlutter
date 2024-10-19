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
        body: Column(
          children: [
            Container(
              // color: Colors.black,
              height: 50,
              margin: const EdgeInsets.symmetric(vertical: 16),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: colors.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      scrollToTap(index);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(right: 16),
                      height: 50,
                      width: 50,
                      color: colors[index],
                      child: Text(
                        '${index + 1}',
                        style: const TextStyle(fontSize: 22),
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: colors.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: containerHeight,
                    color: colors[index],
                  );
                },
              ),
            )
          ],
        ));
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
