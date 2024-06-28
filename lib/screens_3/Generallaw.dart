import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: educationPage(),
  ));
}

class educationPage extends StatefulWidget {
  const educationPage({Key? key}) : super(key: key);

  @override
  _educationPageState createState() => _educationPageState();
}

class _educationPageState extends State<educationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("General Law"),
      ),
      body: ElevatedListView(),
    );
  }
}

class ElevatedListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        ElevatedListTile(
          title: "Criminal Trespass (Section 441 IPC)",
          details:
              "a. Description: Unauthorized entry onto someone else's property with the intent to commit an offense, such as theft or mischief."
              "\nb. Do: Seek permission to enter another person's property. Respect property rights and boundaries."
              "\nc. Don't: Illegally enter someone's land or premises with the intent to commit a crime.",
        ),
        ElevatedListTile(
          title: "Assault (Sections 351-358 IPC)",
          details:
              "a. Description: Inflicting physical harm or the threat of physical harm on another person, ranging from simple assault to grievous hurt."
              "\nb. Do: Resolve conflicts peacefully and avoid violence."
              "\nc. Don't: Physically harm or threaten to harm another person without legal justification.",
        ),
        ElevatedListTile(
          title: "Theft (Section 378 IPC)",
          details:
              "a. Description: Unlawful taking of movable property with the intent to permanently deprive the owner of it."
              "\nb. Do: Respect others' property rights and obtain proper consent for borrowing or using items."
              "\nc. Don't: Steal or take someone else's property without their permission.",
        ),
        ElevatedListTile(
          title: "Robbery (Section 390 IPC)",
          details:
              "a. Description: Using force, intimidation, or violence to commit theft."
              "\nb. Do: Resolve disputes through legal means. Seek mediation or involve law enforcement."
              "\nc. Don't: Use force, violence, or intimidation to take property from others.",
        ),
        ElevatedListTile(
          title: "Criminal Breach of Trust (Section 405 IPC)",
          details:
              "a. Description: Misappropriating property or responsibilities entrusted to you for personal gain."
              "\nb. Do: Honor entrusted responsibilities and property. Act in a trustworthy manner."
              "\nc. Don't: Misuse or misappropriate entrusted property or responsibilities.",
        ),
        ElevatedListTile(
          title: "Cheating (Section 415 IPC)",
          details:
              "a. Description: Deceiving someone to gain a dishonest advantage, typically in financial matters."
              "\nb. Do: Be transparent and honest in financial dealings."
              "\nc. Don't: Deceive or cheat others in financial transactions.",
        ),
        ElevatedListTile(
          title: "Dowry Harassment (Section 498A IPC)",
          details:
              "a. Description: Subjecting a woman to cruelty or harassment for dowry, which is illegal in India."
              "\nb. Do: Uphold principles of equality and respect in matrimonial relationships."
              "\nc. Don't: Harass or demand dowry from a woman or her family.",
        ),
        ElevatedListTile(
          title: "Defamation (Sections 499 and 500 IPC)",
          details:
              "a. Description: Making false statements or publishing material that harms an individual's reputation."
              "\nb. Do: Exercise freedom of speech responsibly and avoid spreading false information."
              "\nc. Don't: Make false statements or publish defamatory material to harm someone's reputation.",
        ),
        ElevatedListTile(
          title: "Criminal Intimidation (Section 506 IPC)",
          details:
              "a. Description: Threatening someone with injury, criminal charges, or other harm to induce them to do or not do something."
              "\nb. Do: Resolve conflicts through peaceful communication and legal means."
              "\nc. Don't: Threaten or intimidate others to achieve your objectives.",
        ),
        ElevatedListTile(
          title: "Criminal Conspiracy (Section 120B IPC)",
          details:
              "a. Description: Planning and conspiring with others to commit a crime, even if the crime itself is not completed."
              "\nb. Do: Engage in lawful activities and avoid participating in illegal conspiracies."
              "\nc. Don't: Plan or participate in conspiracies to commit crimes, even if they remain unrealized.",
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
