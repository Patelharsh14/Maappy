import 'package:flutter/material.dart';

class trafficPage extends StatefulWidget {
  const trafficPage({Key? key}) : super(key: key);

  @override
  _trafficPageState createState() => _trafficPageState();
}

class _trafficPageState extends State<trafficPage> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Traffic Law"),
      ),
      body: const ElevatedListView(),
    );
  }
}

class ElevatedListView extends StatelessWidget {
  const ElevatedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        ElevatedListTile(
          title: "Driving Under the Influence (DUI)",
          details:
              "a. Description: DUI involves operating a vehicle while under the influence of alcohol or drugs, impairing the driver's ability to safely control the vehicle."
              "\nb. Do's: Avoid consuming alcohol or drugs before driving. Use designated drivers or alternative transportation if impaired."
              "\nc. Don'ts: Do not drive under the influence of alcohol or drugs."
              "\nd. Relevant Sections: Sections 185 and 202 of the Motor Vehicles Act, 1988.",
        ),
        ElevatedListTile(
          title: "Reckless Driving",
          details:
              "a. Description: Reckless driving refers to operating a vehicle with a willful and wanton disregard for the safety of others, exhibiting aggressive and dangerous driving behavior."
              "\nb. Do's: Drive responsibly, obey speed limits, and prioritize safety while driving."
              "\nc. Don'ts: Avoid aggressive and dangerous driving behavior, such as speeding or tailgating."
              "\nd. Relevant Section: Section 184 of the Motor Vehicles Act, 1988.",
        ),
        ElevatedListTile(
          title: "Speeding",
          details:
              "a. Description: Speeding involves exceeding posted speed limits or driving at speeds that are unsafe for road and traffic conditions."
              "\nb. Do's: Observe speed limits, adjust your speed to match road conditions, and prioritize safety."
              "\nc. Don'ts: Do not exceed posted speed limits or drive at unsafe speeds."
              "\nd. Relevant Sections: Sections 112 and 183 of the Motor Vehicles Act, 1988.",
        ),
        ElevatedListTile(
          title: "Running Red Lights or Stop Signs",
          details:
              "a. Description: Disobeying traffic signals or running stop signs can lead to accidents and pose risks to other road users."
              "\nb. Do's: Come to a complete stop at stop signs and obey traffic signals."
              "\nc. Don'ts: Do not run red lights or disregard stop signs."
              "\nd. Relevant Sections: Sections 119 and 177 of the Motor Vehicles Act, 1988.",
        ),
        ElevatedListTile(
          title: "Distracted Driving",
          details:
              "a. Description: Distracted driving involves engaging in activities that divert a driver's attention from the road, such as texting or using electronic devices."
              "\nb. Do's: Stay focused on driving and avoid using electronic devices. Use hands-free systems for calls if necessary."
              "\nc. Don'ts: Do not text, browse the internet, or engage in activities that take your attention away from driving."
              "\nd. Relevant Section: Distracted driving may be covered under state-specific regulations.",
        ),
        ElevatedListTile(
          title: "Driving Without a Valid License",
          details:
              "a. Description: Driving without a valid driver's license or with a suspended or revoked license is illegal and poses a risk to road safety."
              "\nb. Do's: Ensure you have a valid and appropriate driver's license before driving."
              "\nc. Don'ts: Do not drive without a valid license or with a suspended or revoked license."
              "\nd. Relevant Sections: Sections 3, 181, and 182 of the Motor Vehicles Act, 1988.",
        ),
        ElevatedListTile(
          title: "Hit and Run (Leaving the Scene of an Accident)",
          details:
              "a. Description: Leaving the scene of an accident without stopping, exchanging information, or reporting the incident is a crime that can harm accident victims."
              "\nb. Do's: Stop at the scene of an accident, exchange information, and report the incident to authorities."
              "\nc. Don'ts: Do not leave the scene of an accident without fulfilling your legal obligations."
              "\nd. Relevant Sections: Sections 161 and 162 of the Motor Vehicles Act, 1988.",
        ),
        ElevatedListTile(
          title: "Driving Without Insurance",
          details:
              "a. Description: Driving without valid automobile insurance coverage is illegal and can lead to financial and legal consequences."
              "\nb. Do's: Maintain valid insurance coverage as required by law."
              "\nc. Don'ts: Do not drive without valid insurance."
              "\nd. Relevant Section: Section 146 of the Motor Vehicles Act, 1988.",
        ),
        ElevatedListTile(
          title: "Illegal Street Racing",
          details:
              "a. Description: Illegal street racing is dangerous, illegal, and can lead to accidents and penalties."
              "\nb. Do's: Refrain from participating in illegal street races and seek legal and safe venues for racing."
              "\nc. Don'ts: Do not engage in illegal street racing."
              "\nd. Relevant Sections: Racing on public roads may be addressed under various sections, depending on the nature of the offense.",
        ),
        ElevatedListTile(
          title: "Failure to Yield Right of Way",
          details:
              "a. Description: Failure to yield the right of way can lead to accidents and disrupt the flow of traffic."
              "\nb. Do's: Yield the right of way to other vehicles or pedestrians as required by traffic rules and signs."
              "\nc. Don'ts: Do not fail to yield the right of way."
              "\nd. Relevant Sections: Right of way violations may be addressed under various sections, such as Sections 28, 43, 44, and 176 of the Motor Vehicles Act, 1988.",
        ),
      ],
    );
  }
}

class ElevatedListTile extends StatefulWidget {
  final String title;
  final String details;

  ElevatedListTile({
    required this.title,
    required this.details,
  });

  @override
  _ElevatedListTileState createState() => _ElevatedListTileState();
}

class _ElevatedListTileState extends State<ElevatedListTile> {
  bool _isExpanded = false;

  void toggleExpansion() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(
              widget.title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            trailing: _isExpanded
                ? const Icon(Icons.keyboard_arrow_up)
                : const Icon(Icons.keyboard_arrow_down),
            onTap: toggleExpansion,
          ),
          if (_isExpanded)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                widget.details,
                style: const TextStyle(fontSize: 14),
              ),
            ),
        ],
      ),
    );
  }
}
