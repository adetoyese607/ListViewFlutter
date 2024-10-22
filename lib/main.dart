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
  final ScrollController _scrollController = ScrollController();
  String _scrollLocation = '';
  int _currentScrollIndex = 0;

  @override
  void initState() {
    _scrollController.addListener(_listenToScrollMoments);
    _scrollController.addListener(_updateScrollIndicator);
    super.initState();
  }

  void _updateScrollIndicator() {
    setState(() {
      _currentScrollIndex = _scrollController.offset ~/ containerHeight;
    });
  }

  void _onNumberTap(int index) {
    _scrollController.animateTo(index * containerHeight,
        duration: Duration(seconds: 1), curve: Curves.easeIn);

    setState(() {
      _currentScrollIndex = index;
    });
  }

  void _listenToScrollMoments() {
    String currentLocation = '';
    if (_scrollController.offset ==
        _scrollController.position.minScrollExtent) {
      currentLocation = 'Reached Start';
    } else if (_scrollController.offset ==
        _scrollController.position.maxScrollExtent) {
      currentLocation = 'Reached End';
    } else {
      currentLocation = 'In the Middle';
    }

    setState(() {
      _scrollLocation = currentLocation;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(_scrollLocation),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 90,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: colors.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    _onNumberTap(index);
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.all(16),
                    alignment: Alignment.center,
                    decoration: index == _currentScrollIndex
                        ? const BoxDecoration(
                            border: Border(
                                bottom:
                                    BorderSide(color: Colors.grey, width: 2)))
                        : null,
                    child: Text(
                      '${index + 1}',
                      style: const TextStyle(fontSize: 30),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              itemCount: colors.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  height: containerHeight,
                  color: colors[index],
                  child: Text(
                    '${index + 1}',
                    style: const TextStyle(
                        fontSize: 100, fontWeight: FontWeight.bold),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
