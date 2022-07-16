import 'Event.dart';

class Task{
  // task Name, Event, Time
  late String name;
  late List<Event> event;

  Task(String name){
    this.name = name;
    event = [];
  } 

  void setNamesOfTasks(String nameOfTask){
    this.name = nameOfTask;
  }

  String getNameOfTask(){
    return this.name;
  }

  void addTimeOfTask(List<String> daysOfWeek, List<DateTime> time, bool repeats){
    for (Event eve in this.event){
    // check if there exists an old event that clashes with a new event
      //if it does then display error message
      // if not then create a new one
    }
    this.event.add(new Event(daysOfWeek, time, repeats));
  }  
}

