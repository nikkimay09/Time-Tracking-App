import 'dart:io';

import 'package:flutter/material.dart';
import 'package:time_tracking_app/CheckInPage.dart';
import 'package:time_tracking_app/HomePage.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = 'Flutter Demo';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.blue[700],
        ), 
      ),  
    );
  }
}

class MyStatefulWidget extends StatefulWidget{
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  //static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    CheckIn(),
    HomePage()
    
  ];
  
  // toolbar
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // checkOrHome(int index){
  //   if (index==0){
  //     CheckIn();
  //   }
  //   else{
  //     HomePage();
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Time Tracker'),  
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex)
        //checkOrHome(_selectedIndex),
      ),
    
    bottomNavigationBar: BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.check_circle),
            label: 'Check In',
            
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[800],
        onTap: _onItemTapped,
      ));
    
  }
}
