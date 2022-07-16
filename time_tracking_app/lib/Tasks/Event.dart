class Event {
  late List<String> dayOfWeek;
  late List<DateTime> time;
  bool repeats = false;

  Event(List<String> daysOfWeek, List<DateTime> time, bool repeats){
      this.dayOfWeek = dayOfWeek;
      this.time = time;
      this.repeats = repeats;
  }
}