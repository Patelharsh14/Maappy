import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FaqPage extends StatefulWidget {
  const FaqPage({Key? key}) : super(key: key);

  @override
  _FaqPageState createState() => _FaqPageState();
}

class _FaqPageState extends State<FaqPage> {
  List<bool> bookedSeats = List.generate(20, (index) => false);
  bool isEngineOn = false;
  bool areDoorsClosed = true;
  double speedometerValue = 60.0;
  double tirePressure = 30.0; // Adjust as needed

  @override
  void initState() {
    super.initState();
    loadBookedSeats();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Status"),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  title: Text("Vehicle Details"),
                  tileColor: Colors.blue, // You can customize the style
                  titleTextStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16.0),
                buildSeatBookingUI(),
              ],
            ),
          ),
          buildStatusBar(),
        ],
      ),
    );
  }

  Widget buildSeatBookingUI() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 20,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              bookedSeats[index] = !bookedSeats[index];
              saveBookedSeats();
            });
          },
          child: Material(
            color: bookedSeats[index] ? Colors.red : Colors.transparent,
            borderRadius: BorderRadius.circular(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  bookedSeats[index]
                      ? Icons.airline_seat_flat
                      : Icons.airline_seat_recline_normal,
                  color: bookedSeats[index] ? Colors.white : Colors.grey,
                  size: 24.0,
                ),
                SizedBox(height: 4.0),
                Text(
                  (index + 1).toString(),
                  style: TextStyle(
                    color: bookedSeats[index] ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget buildStatusBar() {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildStatusItem("Speed", "${speedometerValue.toStringAsFixed(2)}km/h"),
          buildStatusItem("Doors", areDoorsClosed ? "Closed" : "Open"),
          buildStatusItem("Engine", isEngineOn ? "On" : "Off"),
          buildStatusItem("Tire Pressure", "${tirePressure.toStringAsFixed(2)} psi"),
        ],
      ),
    );
  }

  Widget buildStatusItem(String title, String value) {
    return Column(
      children: [
        Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 4.0),
        Text(value),
      ],
    );
  }

  void saveBookedSeats() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('bookedSeats', bookedSeats.join(","));
  }

  void loadBookedSeats() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? savedSeats = prefs.getString('bookedSeats');
    if (savedSeats != null) {
      List<String> seatStrings = savedSeats.split(",");
      setState(() {
        bookedSeats = seatStrings.map((seat) => seat == 'true').toList();
      });
    }
  }
}
