// import 'dart:io';

// import 'package:flutter/material.dart';
// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Time Tracker'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//   final String title;
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above. 
//     TextEditingController taskNameController = new TextEditingController();
//     String text = "";

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Container(
//           color: Colors.white,
//           margin: EdgeInsets.all(50),
//           child: Column(
//             children: <Widget> [
//               Text("Add a new task",style: TextStyle(color: Colors.blue)),
//               TextField(
//                 controller: taskNameController,
//                 // onChanged: (text) {
//                 //   taskNameController.text = text;
//                 // },
//                 textAlign: TextAlign.center,
//               ),
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.blue,
//                   textStyle: TextStyle(
//                     color: Colors.white,
//                   )
//                 ),
//                 onPressed: (){
//                   if(taskNameController.text.length>1){
//                     addTaskName(taskNameController.text);
//                   }
//                 },
//                 child: Text('Add new Task'),
//               )
//             ]
//           )
//         ),
//       ),
//     );
//   }

//   //will show a message where the user can log their event in
//   void addTaskName(String name){
//     print("Name of the Task: " + name);
//     Navigator.push(
//       context, 
//       MaterialPageRoute(builder: (context)=>SecondRoute(name))
//       );
//   }
// }

// class SecondRoute extends StatelessWidget{
//   late String taskName;
//   List<String> daysOfWeek = [];
//   late Future<TimeOfDay> timeFrom;
//   late Future<TimeOfDay> timeTo;
//   bool mon = false;
//   bool tue = false;
//   bool wed = false;
//   bool thu = false;
//   bool fri = false;
//   bool sat = false;
//   bool sun = false;
  

//   SecondRoute(String taskName){
//     this.taskName = taskName;
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(taskName),
//       ),
//       body:Center(
//         child: Container(
//           margin: EdgeInsets.only(top: 25),
//           child: Column(
//             children: <Widget>[
//               Container(
//                 margin: EdgeInsets.only(top: 0, bottom: 100),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     //each container for each day
//                     Container(
//                       //color: Colors.green,
//                       child: Center(
//                         child: Column(
//                           children: <Widget>[
//                             Text("Mon", style: TextStyle(fontSize: 10),),
//                             Checkbox(
//                              value: mon, 
//                               onChanged: (value){
//                                 if(this.daysOfWeek.contains("Monday")){
//                                   this.daysOfWeek.add("Monday");
//                                 }
//                                 else{
//                                   this.daysOfWeek.remove("Monday");
//                                 }
//                                 setState() {
//                                   mon = value!;
//                                 }
//                               }
//                             )
//                           ],
//                         )
//                       ),
//                     ), 
//                     Container(
//                       //color: Colors.green,
//                       child: Center(
//                         child: Column(
//                           children: <Widget>[
//                             Text("Tue", style: TextStyle(fontSize: 10),),
//                             Checkbox(
//                              value: tue, 
//                               onChanged: (value){
//                                 if(this.daysOfWeek.contains("Tuesday")){
//                                   this.daysOfWeek.add("Tuesday");
//                                 }
//                                 else{
//                                   this.daysOfWeek.remove("Tuesday");
//                                 }
//                                 setState() {
//                                   tue = value!;
//                                 }
//                               }
//                             )
//                           ],
//                         )
//                       ),
//                     ), 
//                     Container(
//                       //color: Colors.green,
//                       child: Center(
//                         child: Column(
//                           children: <Widget>[
//                             Text("Wed", style: TextStyle(fontSize: 10),),
//                             Checkbox(
//                              value: wed, 
//                               onChanged: (value){
//                                 if(this.daysOfWeek.contains("Wednesday")){
//                                   this.daysOfWeek.add("Wednesday");
//                                 }
//                                 else{
//                                   this.daysOfWeek.remove("Wednesday");
//                                 }
//                                 setState() {
//                                   wed = value!;
//                                 }
//                               }
//                             )
//                           ],
//                         )
//                       ),
//                     ),
//                     Container(
//                       //color: Colors.green,
//                       child: Center(
//                         child: Column(
//                           children: <Widget>[
//                             Text("Thu", style: TextStyle(fontSize: 10),),
//                             Checkbox(
//                              value: thu, 
//                               onChanged: (value){
//                                 if(this.daysOfWeek.contains("Thursday")){
//                                   this.daysOfWeek.add("Thursday");
//                                 }
//                                 else{
//                                   this.daysOfWeek.remove("Thursday");
//                                 }
//                                 setState() {
//                                   thu = value!;
//                                 }
//                               }
//                             )
//                           ],
//                         )
//                       ),
//                     ),
//                     Container(
//                       //color: Colors.green,
//                       child: Center(
//                         child: Column(
//                           children: <Widget>[
//                             Text("Fri", style: TextStyle(fontSize: 10),),
//                             Checkbox(
//                              value: fri, 
//                               onChanged: (value){
//                                 if(this.daysOfWeek.contains("Friday")){
//                                   this.daysOfWeek.add("Friday");
//                                 }
//                                 else{
//                                   this.daysOfWeek.remove("Friday");
//                                 }
//                                 setState() {
//                                   fri = value!;
//                                 }
//                               }
//                             )
//                           ],
//                         )
//                       ),
//                     ),
//                     Container(
//                       //color: Colors.green,
//                       child: Center(
//                         child: Column(
//                           children: <Widget>[
//                             Text("Sat", style: TextStyle(fontSize: 10),),
//                             Checkbox(
//                              value: sat, 
//                               onChanged: (value){
//                                 if(this.daysOfWeek.contains("Saturday")){
//                                   this.daysOfWeek.add("Saturday");
//                                 }
//                                 else{
//                                   this.daysOfWeek.remove("Saturday");
//                                 }
//                                 setState() {
//                                   sat = value!;
//                                 }
//                               }
//                             )
//                           ],
//                         )
//                       ),
//                     ),
//                     Container(
//                       //color: Colors.green,
//                       child: Center(
//                         child: Column(
//                           children: <Widget>[
//                             Text("Sun", style: TextStyle(fontSize: 10),),
//                             Checkbox(
//                              value: sun, 
//                               onChanged: (value){
//                                 if(this.daysOfWeek.contains("Sunday")){
//                                   this.daysOfWeek.add("Sunday");
//                                 }
//                                 else{
//                                   this.daysOfWeek.remove("Sunday");
//                                 }
//                                 setState() {
//                                   sun = value!;
//                                 }
//                               }
//                             )
//                           ],
//                         )
//                       ),
//                     ),
//                   ]
//                 ),
//               ),
//               Container(),
//               ElevatedButton(
//                 onPressed: (){
//                   createTask();
//                   //Navigator.pop(context);
//                 }, 
//                 child: Text('Create Task'),
//               )
//             ],
//           ) 
//         ),
//       )
//     );
//   }
//   void createTask() async{
//     for (String day in daysOfWeek){
//       print(day);
//     }
//     DateTime current = new DateTime.now();
//     DateTime? startTime;
//     DateTime? endTime;

//     await timeFrom.then((value) => startTime = new DateTime(current.year, current.day, value.hour, value.minute));
//     print(startTime.toString());
//     await timeTo.then((value) => endTime = new DateTime(current.year, current.day, value.hour, value.minute));
//     print(endTime.toString());


//   }
// }
