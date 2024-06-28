import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: propertyPage(),
  ));
}

class propertyPage extends StatefulWidget {
  const propertyPage({Key? key}) : super(key: key);

  @override
  _propertyPageState createState() => _propertyPageState();
}

class _propertyPageState extends State<propertyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Property Law"),
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
      children: const [
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
          title: "Burglary (Section 441 IPC)",
          details:
              "a. Description: Illegally entering a building or premises with the intent to commit theft, vandalism, or other criminal acts."
              "\nb. Do: Respect the privacy and security of others' homes and properties."
              "\nc. Don't: Illegally enter premises or structures with the intent to commit theft or other crimes.",
        ),
        ElevatedListTile(
          title: "Criminal Trespass (Section 441 IPC)",
          details:
              "a. Description: Unauthorized entry onto someone else's property, including land or structures, without their consent."
              "\nb. Do: Seek permission to enter or use someone else's property."
              "\nc. Don't: Enter another person's land or property without their consent.",
        ),
        ElevatedListTile(
          title: "Criminal Mischief (Section 425 IPC)",
          details:
              "a. Description: The intentional damage or destruction of another person's property."
              "\nb. Do: Resolve disputes peacefully and within the boundaries of the law."
              "\nc. Don't: Intentionally damage or destroy someone else's property.",
        ),
        ElevatedListTile(
          title: "Fraud (Section 420 IPC)",
          details:
              "a. Description: Deceptive practices or misrepresentation to gain control or ownership of someone else's property or financial assets."
              "\nb. Do: Conduct financial and business transactions honestly and transparently."
              "\nc. Don't: Engage in deceptive practices or misrepresentations to gain control over others' property or financial assets.",
        ),
        ElevatedListTile(
          title: "Forgery (Section 464 IPC)",
          details:
              "a. Description: Creating fake documents or signatures to deceive others and gain control of property."
              "\nb. Do: Use signatures and documents honestly and only with proper authorization."
              "\nc. Don't: Create or use forged documents, signatures, or seals to deceive or gain control over property.",
        ),
        ElevatedListTile(
          title: "Extortion (Section 383 IPC)",
          details:
              "a. Description: Threatening or coercing someone to give up their property or money through fear or intimidation."
              "\nb. Do: Resolve disputes through negotiation, legal channels, or mediation."
              "\nc. Don't: Threaten, intimidate, or coerce someone into giving up their property or money.",
        ),
        ElevatedListTile(
          title: "Land Grabbing",
          details:
              "a. Description: Illegally taking possession of land or property that belongs to someone else, often through fraudulent means."
              "\nb. Do: Respect land ownership rights and follow legal processes for acquiring property."
              "\nc. Don't: Illegally occupy or seize land or property that belongs to others.",
        ),
        ElevatedListTile(
          title: "Intellectual Property Theft",
          details:
              "a. Description: Violating copyrights, trademarks, or patents, and unauthorized use or duplication of intellectual property, such as software, music, or inventions."
              "\nb. Do: Respect intellectual property rights and obtain proper licenses or permissions for use."
              "\nc. Don't: Violate copyrights, trademarks, or patents by unauthorized use, duplication, or distribution of intellectual property.",
        ),
      ],
    );
  }
}

class ElevatedListTile extends StatefulWidget {
  final String title;
  final String details;

  const ElevatedListTile({super.key, 
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
