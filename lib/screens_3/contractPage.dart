import 'package:flutter/material.dart';


class contractPage extends StatefulWidget {
  const contractPage({Key? key}) : super(key: key);

  @override
  _contractPageState createState() => _contractPageState();
}

class _contractPageState extends State<contractPage> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Matrimonial Law"),
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
          title: "Dowry Harassment (Section 498A IPC)",
          details:
              "a. Description: Subjecting a woman to cruelty or harassment for dowry, which is illegal in India."
              "\nb. Do: Uphold principles of gender equality and respect in matrimonial relationships. Do not demand or harass for dowry."
              "\nc. Don't: Harass or demand dowry from a woman or her family. Commit acts of cruelty.",
        ),
        ElevatedListTile(
          title: "Bigamy (Sections 494 and 495 IPC)",
          details:
              "a. Description: Marrying another person while still being legally married to someone else."
              "\nb. Do: Adhere to monogamy if it's applicable to your personal law."
              "\nc. Don't: Enter into a second marriage while the first marriage is legally subsisting.",
        ),
        ElevatedListTile(
          title: "Adultery (Section 497 IPC)",
          details:
              "a. Description: Engaging in sexual intercourse with a person other than one's spouse, with the consent of the other spouse."
              "\nb. Do: Maintain the trust and fidelity within your matrimonial relationship."
              "\nc. Don't: Engage in extramarital affairs that breach the marital bond.",
        ),
        ElevatedListTile(
          title: "Domestic Violence (Protection of Women from Domestic Violence Act)",
          details:
              "a. Description: Involves physical, emotional, or economic abuse within a domestic relationship."
              "\nb. Do: Treat your spouse and family members with respect and care."
              "\nc. Don't: Engage in any form of domestic violence, including physical or emotional abuse.",
        ),
        ElevatedListTile(
          title: "Divorce (various laws)",
          details:
              "Description: Legal termination of a marriage based on grounds specified in the applicable personal laws."
              "\nDo: Seek divorce only when there are valid grounds as per personal laws."
              "\nDon't: File for divorce without proper legal justification.",
        ),
        ElevatedListTile(
          title: "Maintenance (Section 125 CrPC)",
          details:
              "a. Description: Claims for financial support by a spouse after separation or divorce."
              "\nb. Do: Support the financial needs of your dependent spouse or children."
              "\nc. Don't: Neglect your financial responsibilities as mandated by the court.",
        ),
        ElevatedListTile(
          title: "Child Custody and Guardianship",
          details:
              "Description: Disputes over the custody of children and the rights and responsibilities of parents."
              "\nDo: Act in the best interests of the child and cooperate with the legal process."
              "\nDon't: Use children as pawns in disputes or violate court-ordered custody arrangements.",
        ),
        ElevatedListTile(
          title: "Restitution of Conjugal Rights (Section 9 of the Hindu Marriage Act)",
          details:
              "a. Description: A spouse's legal right to request the other spouse to return and live together."
              "\nb. Do: Engage in peaceful reconciliation efforts if the relationship is strained."
              "\nc. Don't: Misuse legal provisions for personal vendettas or harassment.",
        ),
        ElevatedListTile(
          title: "Marital Rape (not expressly criminalized in India)",
          details:
              "a. Description: Sexual intercourse without the consent of one's spouse, a legal issue currently under discussion and advocacy in India."
              "\nb. Do: Respect each other's boundaries and consent within the marital relationship."
              "\nc. Don't: Engage in non-consensual sexual activity within the marriage.",
        ),
        ElevatedListTile(
          title: "Property Division and Alimony",
          details:
              "a. Description: Disputes over the division of property and assets during divorce proceedings, and claims for financial support (alimony)."
              "\nb. Do: Cooperate and engage in a fair and equitable division of property."
              "\nc. Don't: Unfairly withhold property or alimony to the detriment of the other party.",
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
