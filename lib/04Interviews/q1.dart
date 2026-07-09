/*

  Create a traffic light component with green, yellow, and red lights. On clicking a button,
  the light should change. Initially, it should show green.
  After 2 minutes, it should automatically switch to red for 30 seconds,
  then yellow for 10 seconds, and repeat this cycle continuously.

 */

void main() async {
  List lights = ['green', 'yellow', 'red'];

  // when click on button

  String currentTime =
      "${DateTime.now().hour}: ${DateTime.now().minute}:${DateTime.now().second}";

  print("Button Clicked - Traffic Light Changed : $currentTime");

  while (true) {
    for (var e in lights) {
      String currentTime =
          "${DateTime.now().hour}: ${DateTime.now().minute}:${DateTime.now().second}";
      if (e == 'green') {
        print("Green wait 2 minutes => $currentTime");
        await Future.delayed(Duration(minutes: 2));
      } else if (e == 'red') {
        print("Red wait for 30 sec => $currentTime");
        await Future.delayed(Duration(seconds: 30));
      } else if (e == 'yellow') {
        print("Yellow wait for 10 sec => $currentTime");
        await Future.delayed(Duration(seconds: 10));
      }
    }
  }
}
