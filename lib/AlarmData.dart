class Alarm {
  DateTime time;
  String label;
  bool state;
  List<int> repeat = [];

  Alarm({this.label, this.repeat, this.state, this.time});
}

List<Alarm> alarmList = [
  Alarm(
    label: "Morning-1",
    state: true,
    repeat: [],
    time: DateTime.now().add(
      Duration(hours: 1),
    ),
  ),
  Alarm(
    label: "Afternoon-2",
    state: true,
    repeat: [],
    time: DateTime.now().add(
      Duration(hours: 3),
    ),
  ),
    Alarm(
    label: "Evening-3",
    state: true,
    repeat: [],
    time: DateTime.now().add(
      Duration(hours: 5),
    ),
  ),
  Alarm(
    label: "Night-4",
    state: true,
    repeat: [],
    time: DateTime.now().add(
      Duration(hours: 7),
    ),
  ),
];
