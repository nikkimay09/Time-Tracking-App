import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);
  
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<StatefulWidget>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOMEPAGE'),
        
      ),
    );
  }

}

// static const TextStyle optionStyle =
//       TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  // static const List<Widget> _widgetOptions = <Widget>[
  //   Text(
  //     'Check In',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Home',
  //     style: optionStyle,
  //   ),
    
  // ];