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
  // SCROLL CONTROLLER
  // final ScrollController _scrollController = ScrollController();
  // String _scrollLocation = '';
  // int _currentScrollIndex = 0;

  // @override
  // void initState() {
  //   _scrollController.addListener(_listenToScrollMoments);
  //   _scrollController.addListener(_updateScrollIndicator);
  //   super.initState();
  // }

  // void _updateScrollIndicator() {
  //   setState(() {
  //     _currentScrollIndex = _scrollController.offset ~/ containerHeight;
  //   });
  // }

  // void _onNumberTap(int index) {
  //   _scrollController.animateTo(index * containerHeight,
  //       duration: Duration(seconds: 1), curve: Curves.easeIn);

  //   setState(() {
  //     _currentScrollIndex = index;
  //   });
  // }

  // void _listenToScrollMoments() {
  //   String currentLocation = '';
  //   if (_scrollController.offset ==
  //       _scrollController.position.minScrollExtent) {
  //     currentLocation = 'Reached Start';
  //   } else if (_scrollController.offset ==
  //       _scrollController.position.maxScrollExtent) {
  //     currentLocation = 'Reached End';
  //   } else {
  //     currentLocation = 'In the Middle';
  //   }

  //   setState(() {
  //     _scrollLocation = currentLocation;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // title: Text(_scrollLocation),
        title:const Text('Learning FLutter'),
      ),
      // SCROLL CONTROLLER
      // body: Column(
      //   children: [
      //     SizedBox(
      //       height: 90,
      //       width: double.infinity,
      //       child: ListView.builder(
      //         scrollDirection: Axis.horizontal,
      //         itemCount: colors.length,
      //         itemBuilder: (BuildContext context, int index) {
      //           return InkWell(
      //             onTap: () {
      //               _onNumberTap(index);
      //             },
      //             child: Container(
      //               width: 50,
      //               height: 50,
      //               margin: EdgeInsets.all(16),
      //               alignment: Alignment.center,
      //               decoration: index == _currentScrollIndex
      //                   ? const BoxDecoration(
      //                       border: Border(
      //                           bottom:
      //                               BorderSide(color: Colors.grey, width: 2)))
      //                   : null,
      //               child: Text(
      //                 '${index + 1}',
      //                 style: const TextStyle(fontSize: 30),
      //               ),
      //             ),
      //           );
      //         },
      //       ),
      //     ),
      //     Expanded(
      //       child: ListView.builder(
      //         controller: _scrollController,
      //         itemCount: colors.length,
      //         itemBuilder: (BuildContext context, int index) {
      //           return Container(
      //             alignment: Alignment.center,
      //             height: containerHeight,
      //             color: colors[index],
      //             child: Text(
      //               '${index + 1}',
      //               style: const TextStyle(
      //                   fontSize: 100, fontWeight: FontWeight.bold),
      //             ),
      //           );
      //         },
      //       ),
      //     ),
      //   ],
      // ),


      // LISTVIEW INSIDE LISTVIEW

      // body: ListView(
      //   children: [
      //     Container(
      //       height: 200,
      //       width: double.infinity,
      //       color: Colors.amber[600],
      //       margin: EdgeInsets.all(8),
      //       child: Text('Item 1'),
      //       alignment: Alignment.center,
      //     ),
      //     SizedBox(
      //       height: 350,
      //       child: ListView.builder(
      //         scrollDirection: Axis.vertical,
      //         itemCount: 5,
      //         itemBuilder: (BuildContext context, int index) {
      //           return Container(
      //             height: 100,
      //             width: 00,
      //             color: Colors.orange,
      //             margin: EdgeInsets.all(8),
      //             alignment: Alignment.center,
      //             child: Text('${index + 1}'),

      //           );
      //         },
      //       ),
      //     ),
      //       Container(
      //       height: 200,
      //       width: double.infinity,
      //       color: Colors.amber[600],
      //       margin: EdgeInsets.all(8),
      //       child: Text('Item 2'),
      //        alignment: Alignment.center,
      //     ),
      //       Container(
      //       height: 200,
      //       width: double.infinity,
      //       color: Colors.amber[600],
      //       margin: EdgeInsets.all(8),
      //       child: Text('Item 3'),
      //        alignment: Alignment.center,
      //     ),
      //       Container(
      //       height: 200,
      //       width: double.infinity,
      //        alignment: Alignment.center,
      //       color: Colors.amber[600],
      //       margin: EdgeInsets.all(8),
      //       child: Text('Item 4'),
      //     ),
      //   ],
      // ),



      // GRIDVIEW WIDGET
      body:  GridView.count(
     crossAxisCount: 3,
     mainAxisSpacing: 20,
     crossAxisSpacing: 10,
     scrollDirection: Axis.vertical,
     cacheExtent: 100,
     childAspectRatio: 0.5,
        children:const [
          MyBox(index: 1),
          MyBox(index: 2),
          MyBox(index: 3),
          MyBox(index: 4),
          MyBox(index: 5),
          MyBox(index: 6),
          MyBox(index: 7),
          MyBox(index: 8),
          MyBox(index: 9),
          MyBox(index: 10),
          MyBox(index: 11),
            MyBox(index: 12),
            MyBox(index: 13),
            MyBox(index: 14),
            MyBox(index: 15),
        

        ],
      )
    );
  }
}
class MyBox extends StatelessWidget {
  const MyBox({super.key, required this.index});

final int index;


  @override
  Widget build(BuildContext context) {
    return Container(
     color: Colors.blue,
     alignment: Alignment.center,
    //  margin: EdgeInsets.all(8),
     child: Text('$index'), 
    );
  }
}