class SmallServices {
  // This function says the year is leap year or not
  static bool isLeapYear(int year) =>
      year % 4 == 0
          ? year % 100 == 0
              ? year % 400 == 0
                  ? true
                  : false
              : true
          : false;

  static String getTimeStatus(String t) {
    DateTime p = DateTime.parse(t);
    DateTime n = DateTime.now();

    int past =
        (((p.year * 12 + p.month) * 30 + p.day) * 24 + p.hour) * 60 + p.minute;
    int now =
        (((n.year * 12 + n.month) * 30 + n.day) * 24 + n.hour) * 60 + n.minute;

    int diff = now - past;
    String label = "";

    int hour = 60;
    int day = 24 * hour;
    int month = 30 * day;
    int year = 12 * month;
    if (diff < 1) {
      label = "just now";
      diff = 0;
    } else if (diff < hour) {
      label = "min. ago";
    } else if (diff < day) {
      label = "hour. ago";
      diff = diff ~/ hour;
    } else if (diff < month) {
      label = "day. ago";
      diff = diff ~/ day;
    } else if (diff < year) {
      label = "months. ago";
      diff = diff ~/ month;
    } else {
      label = "years. ago";
      diff = diff ~/ year;
    }

    return diff != 0 ? "$diff $label" : label;
  }



  static String capitalizeEachWord(String? input) {
  if (input == null || input.trim().isEmpty) return '';

  return input
      .trim()
      .split(RegExp(r'\s+')) // handles multiple spaces
      .map((word) {
        if (word.isEmpty) return '';
        return word[0].toUpperCase() + word.substring(1).toLowerCase();
      })
      .join(' ');
}

}



/*

int YEAR = 2020;
    if (SS.isLeapYear(YEAR)) {
      print("$YEAR is Leap year Days = 366");
    } else {
      print("$YEAR is not Leap year Days = 365");
    }

*/