import 'package:flutter/material.dart';


class businessPage extends StatefulWidget {
  const businessPage({Key? key}) : super(key: key);

  @override
  _businessPageState createState() => _businessPageState();
}

class _businessPageState extends State<businessPage> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Business Law"),
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
          title: "Fraud",
          details:
              "a. Description: Fraud involves intentionally deceiving someone for financial gain, such as misrepresentation, embezzlement, or securities fraud."
              "b. Do's: Conduct business transactions honestly and transparently, adhering to contract terms and financial regulations."
              "c. Don'ts: Avoid making false statements, misrepresenting facts, or engaging in deceitful practices for financial gain."
              "d. Relevant Sections: Sections 420 (Cheating) and 406 (Criminal Breach of Trust) of the Indian Penal Code (IPC).",
        ),
        ElevatedListTile(
          title: "Embezzlement",
          details:
              "a. Description: Embezzlement is the misappropriation or theft of funds or property by an individual in a position of trust or responsibility."
              "b. Do's: Handle entrusted funds and assets responsibly and maintain accurate financial records."
              "c. Don'ts: Do not misappropriate or steal funds or assets that are not rightfully yours."
              "d. Relevant Sections: Sections 403 (Dishonest Misappropriation of Property), 406 (Criminal Breach of Trust), and 408 (Criminal Breach of Trust by Clerk or Servant) of the IPC.",
        ),
        ElevatedListTile(
          title: "Money Laundering",
          details:
              "a. Description: Money laundering involves concealing the origins of illegally obtained money, often through complex financial transactions."
              "b. Do's: Comply with financial regulations and maintain transparent financial records."
              "c. Don'ts: Do not engage in activities that involve concealing or legitimizing proceeds of illegal activities."
              "d. Relevant Law: Prevention of Money Laundering Act, 2002 (PMLA).",
        ),
        ElevatedListTile(
          title: "Insider Trading",
          details:
              "a. Description: Insider trading involves trading securities based on non-public, material information, in violation of securities regulations."
              "b. Do's: Abide by securities laws and trade restrictions and refrain from using non-public information for personal gain."
              "c. Don'ts: Do not trade securities based on non-public information or share such information for personal financial gain."
              "d. Relevant Law: Insider trading is regulated by the Securities and Exchange Board of India (SEBI).",
        ),
        ElevatedListTile(
          title: "Antitrust Violations",
          details:
              "a. Description: Antitrust violations involve practices that harm fair competition and consumers, such as price-fixing and monopolistic behavior."
              "b. Do's: Compete fairly, follow antitrust laws, and avoid anti-competitive practices."
              "c. Don'ts: Do not engage in practices that harm fair competition or consumers."
              "d. Relevant Law: The Competition Act, 2002, addresses antitrust and competition issues in India.",
        ),
        ElevatedListTile(
          title: "Bribery and Corruption",
          details:
              "a. Description: Bribery and corruption involve offering, giving, receiving, or soliciting something of value to influence decisions."
              "b. Do's: Conduct business with integrity, comply with anti-bribery laws, and maintain transparent practices."
              "c. Don'ts: Do not offer, solicit, or accept bribes or engage in corrupt practices."
              "d. Relevant Sections: Sections 161 to 165A of the IPC address various forms of bribery and corruption.",
        ),
        ElevatedListTile(
          title: "Corporate Espionage",
          details:
              "a. Description: Corporate espionage is the theft of intellectual property or confidential business information for competitive advantage."
              "b. Do's: Respect intellectual property rights, protect sensitive data, and maintain ethical practices."
              "c. Don'ts: Do not engage in unauthorized access, hacking, or unethical methods to gain a competitive edge."
              "d. Relevant Laws: Corporate espionage may involve multiple legal provisions, including the Information Technology Act, 2000, and the IPC.",
        ),
        ElevatedListTile(
          title: "Consumer Protection Violations",
          details:
              "a. Description: Consumer protection violations involve deceptive or unfair practices that harm consumers, such as false advertising or product defects."
              "b. Do's: Provide accurate and transparent information to consumers about products and services."
              "c. Don'ts: Avoid deceptive marketing, selling unsafe products, or compromising consumer data."
              "d. Relevant Law: The Consumer Protection Act, 2019, deals with consumer protection issues.",
        ),
        ElevatedListTile(
          title: "Environmental Crimes",
          details:
              "a. Description: Environmental crimes involve violations of laws and regulations related to environmental protection, including pollution and wildlife trafficking."
              "b. Do's: Comply with environmental regulations, engage in sustainable practices, and protect the environment."
              "c. Don'ts: Do not pollute, dump hazardous materials illegally, or engage in activities that harm the environment."
              "d. Relevant Laws: Environmental crimes are governed by various laws, including the Water (Prevention and Control of Pollution) Act, 1974, and the Wildlife Protection Act, 1972, among others.",
        ),
        ElevatedListTile(
          title: "Intellectual Property Theft",
          details:
              "a. Description: Intellectual property theft involves the unauthorized use or distribution of copyrighted material, trademarks, patents, or trade secrets."
              "b. Do's: Respect intellectual property rights, obtain proper licenses, and seek permission when using others' work."
              "c. Don'ts: Do not use copyrighted materials, trademarks, patents, or trade secrets without proper authorization or attribution."
              "d. Relevant Laws: Intellectual property violations can be addressed under various laws, including the Copyright Act, 1957, the Trade Marks Act, 1999, the Patents Act, 1970, and the Designs Act, 2000.",
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
