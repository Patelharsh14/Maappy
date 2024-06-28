import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: civilPage(),
  ));
}

class civilPage extends StatefulWidget {
  const civilPage({Key? key}) : super(key: key);

  @override
  _civilPageState createState() => _civilPageState();
}

class _civilPageState extends State<civilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Civil Law"),
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
      children: const [
        ElevatedListTile(
          title: "Property Disputes",
          details: "a. Description: Property disputes often revolve around issues of ownership, boundaries, and land titles."
              "\nb. Do's:"
              "\ni. Verify property documents and titles before purchase."
              "\nii. Seek legal advice when facing property disputes."
              "\niii. Attempt negotiation or mediation to resolve disputes amicably."
              "\nc. Don'ts:"
              "\ni. Do not engage in illegal land grabbing or encroach on others' property."
              "\nii. Do not proceed with property transactions without proper due diligence."
              "\nd. Relevant Laws/Sections: The Transfer of Property Act, state-specific property laws, and local land regulations."
        ),
        ElevatedListTile(
          title: "Family Law Cases",
          details: "a. Description: Family law cases encompass divorce, child custody, alimony, and inheritance disputes."
              "\nb. Do's:"
              "\ni. Consult with family law attorneys for guidance."
              "\nii. Comply with court orders and attend legal proceedings."
              "\niii. Consider mediation for amicable settlements in divorce cases."
              "\nc. Don'ts:"
              "\ni. Do not attempt to manipulate or hide assets during divorce proceedings."
              "\nii. Do not engage in harassment or intimidation of the other party."
              "\nd. Relevant Laws/Sections: Laws such as the Hindu Marriage Act, 1955, Indian Divorce Act, 1869, and Guardians and Wards Act, 1890."
        ),
        ElevatedListTile(
          title: "Contract Disputes",
          details: "a. Description: Contract disputes arise when parties disagree over the terms and performance of a contract."
              "\nb. Do's:"
              "\ni. Fulfil the terms of the contract as agreed."
              "\nii. Keep records of all communication and documentation related to the contract."
              "\niii. Seek legal advice to resolve disputes through negotiation or legal action."
              "\nc. Don'ts:"
              "\ni. Do not breach contract terms without justification."
              "\nii. Do not destroy or manipulate evidence related to the contract."
              "\nd. Relevant Laws/Sections: The Indian Contract Act, 1872."
        ),
        ElevatedListTile(
          title: "Consumer Disputes",
          details: "a. Description: Consumer disputes involve disagreements between consumers and sellers or service providers."
              "\nb. Do's:"
              "\ni. Keep records of transactions and complaints."
              "\nii. File complaints with the appropriate consumer forum."
              "\niii. Cooperate with the consumer court's proceedings."
              "\nc. Don'ts:"
              "\ni. Do not engage in fraudulent or unfair trade practices."
              "\nii. Do not delay or avoid addressing consumer complaints."
              "\nd. Relevant Laws/Sections: The Consumer Protection Act, 2019."
        ),
        ElevatedListTile(
          title: "Debt Recovery",
          details: "a. Description: Debt recovery cases are initiated to collect unpaid loans or debts, often by financial institutions or creditors."
              "\nb. Do's:"
              "\ni. Respond to creditor communications and negotiate repayment terms if needed."
              "\nii. Seek legal advice if facing difficulties in repaying debts."
              "\nc. Don'ts:"
              "\ni. Do not ignore creditor notices or court summons."
              "\nii. Do not engage in fraudulent activities to evade debt repayment."
              "\nd. Relevant Laws/Sections: Debt recovery proceedings may be governed by laws like the Securitization and Reconstruction of Financial Assets and Enforcement of Security Interest Act, 2002 (SARFAESI Act)."
        ),
        ElevatedListTile(
          title: "Employment Disputes",
          details: "a. Description: Employment disputes include issues related to employment contracts, unfair termination, non-payment of wages, and workplace harassment."
              "\nb. Do's:"
              "\ni. Follow due process as per employment agreements and labor laws."
              "\nii. Document workplace incidents and issues."
              "\niii. Report workplace harassment or discrimination to the appropriate authorities."
              "\nc. Don'ts:"
              "\ni. Do not take the law into your own hands in case of workplace disputes."
              "\nii. Do not engage in retaliatory actions against employees."
              "\nd. Relevant Laws/Sections: Relevant labor laws and regulations, such as the Industrial Disputes Act, 1947, and Payment of Wages Act, 1936."
        ),
        ElevatedListTile(
          title: "Property and Tenancy Matters",
          details: "a. Description: Property and tenancy disputes may involve landlord-tenant issues, eviction, and lease agreements."
              "\nb. Do's:"
              "\ni. Abide by the terms of lease or tenancy agreements."
              "\nii. Seek legal advice when dealing with eviction or rent disputes."
              "\nc. Don'ts:"
              "\ni. Do not force eviction without following legal procedures."
              "\nii. Do not withhold rent unlawfully."
              "\nd. Relevant Laws/Sections: Lease and tenancy agreements are governed by state-specific Rent Control Acts and property laws."
        ),
        ElevatedListTile(
          title: "Will and Inheritance Disputes",
          details: "a. Description: Will and inheritance disputes concern the validity of wills, distribution of assets, and inheritance rights."
              "\nb. Do's:"
              "\ni. Consult with legal experts regarding wills and inheritance matters."
              "\nii. Preserve evidence related to wills and inheritance."
              "\nc. Don'ts:"
              "\ni. Do not manipulate or forge wills or inheritance documents."
              "\nii. Do not engage in coercion or undue influence in inheritance matters."
              "\nd. Relevant Laws/Sections: Laws related to succession and inheritance, including the Indian Succession Act, 1925, and personal laws of different religious communities."
        ),
        ElevatedListTile(
          title: "Intellectual Property Disputes",
          details: "a. Description: Intellectual property disputes involve issues related to patents, trademarks, copyrights, and trade secrets."
              "\nb. Do's:"
              "\ni. Register intellectual property as required by law."
              "\nii. Respect others' intellectual property rights."
              "\niii. Pursue legal action against intellectual property infringement."
              "\nc. Don'ts:"
              "\ni. Do not infringe on the intellectual property rights of others."
              "\nii. Do not use others' copyrighted material without permission."
              "\nd. Relevant Laws/Sections: Laws such as the Copyright Act, 1957, Patents Act, 1970, Trademarks Act, 1999, and Designs Act, 2000."
        ),
        ElevatedListTile(
          title: "Tort Cases",
          details: "a. Description: Tort cases cover a wide range of civil wrongs, including personal injury cases, defamation, and negligence claims."
              "\nb. Do's:"
              "\ni. Seek legal advice for personal injury claims and defamation cases."
              "\nii. Document evidence related to the tort."
              "\niii. Cooperate with legal proceedings."
              "\nc. Don'ts:"
              "\ni. Do not engage in defamation or false statements about others."
              "\nii. Do not engage in harmful activities that can lead to personal injury claims."
              "\nd. Relevant Laws/Sections: Tort cases are often governed by common law principles and specific statutes depending on the nature of the tort."
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

