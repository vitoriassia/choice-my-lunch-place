extension DateOnlyCompare on DateTime {
  bool isToday() {
    final now = DateTime.now();

    return now.year == this.year &&
        now.month == this.month &&
        now.day == this.day;
  }

  String onlyDate() {
    return this.toString().substring(0, 10);
  }
}
