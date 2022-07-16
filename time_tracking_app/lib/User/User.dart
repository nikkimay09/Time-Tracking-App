import 'package:time_tracking_app/Tasks/Event.dart';
import 'package:time_tracking_app/Tasks/Task.dart';

class User{
  late List<Task> tasks = [];
  
  void createTask(String taskName, List<String> daysOfWeek, List<DateTime> time, bool repeats){
    //check if there is a same name task
    //if yes,then add the time fo it
    if (this.getNameOfTask(taskName) == null){
      this.tasks.add(new Task(taskName));
    }
    Task theTask = this.getNameOfTask(taskName);
    theTask.addTimeOfTask(daysOfWeek, time, repeats);
  }
    
  //check if there is a same name task
  Task getNameOfTask(String taskName){
    var ret = null;
    for (Task task in this.tasks){
      if(task.name == taskName){
        ret = task;
      }
    }
    return ret;
  }
}