import 'Event.dart';

class Task{
    // task Name, Event, Time
    String name;
    List<Event> event;

    void setNamesOfTasks(String nameOfTask){
        this.name = nameOfTask;
    }

    String getNameOfTask(){
        return this.name;
    }

    void addTimeOfTask(List(String) dayOfWeek, List<DateTime> time; bool repeats){
        for (Event eve in this.event){
        // check if there exists an old event that clashes with a new event
            //if it does then display error message

            // if not then create a new one
        }

    }
    this.event.add(new Event(dayOfWeek, time, repeats));
}

