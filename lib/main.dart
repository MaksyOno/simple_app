import 'package:flutter/material.dart';

import 'widgets/myDrawer.dart';
import 'widgets/myEndDrawer.dart';
import 'widgets/myBottomSheet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openEndDrawer() {
    _scaffoldKey.currentState?.openEndDrawer();
  }

  int _selectedTab = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home'),
    Text('Chat'),
    Text('Albums'),
  ];

  void onSelectTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('Simple app'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: _openEndDrawer,
            icon: const Icon(Icons.person),
          ),
        ],
      ),
      drawer: const MyDrawer(),
      endDrawer: const MyEndDrawer(),
      body: Center(
        child: _widgetOptions[_selectedTab],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return const MyBottomSheet();
              });
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: BottomNavigationBar(
          currentIndex: _selectedTab,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
            BottomNavigationBarItem(icon: Icon(Icons.album), label: 'Albums'),
          ],
          onTap: onSelectTab,
        ),
      ),
    );
  }
}


