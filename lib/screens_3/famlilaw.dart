import 'package:flutter/material.dart';

class FamliylawPage extends StatefulWidget {
  const FamliylawPage({Key? key}) : super(key: key);

  @override
  _FamilyLawState createState() => _FamilyLawState();
}

class _FamilyLawState extends State<FamliylawPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Family Law"),
      ),
      body: ListView(
        children: <Widget>[
          buildCase(
            "Domestic Violence",
            "Domestic violence includes physical, emotional, or economic abuse within a domestic relationship. It is a pervasive issue in India.",
            "Relevant Law: The Protection of Women from Domestic Violence Act, 2005, deals with domestic violence cases.",
            [
              "Do:",
              "  - Seek immediate help and report domestic violence to the police.",
              "  - Consult with a lawyer or counselor for legal and emotional support.",
              "  - Consider obtaining a restraining order to protect yourself and your children.",
            ],
            [
              "Don't:",
              "  - Endure domestic violence silently; it's essential to seek help.",
              "  - Retaliate with violence; instead, focus on legal protection.",
              "  - Engage in behaviors that may escalate the situation further.",
            ],
          ),
          buildCase(
            "Dowry Harassment",
            "Dowry harassment involves illegal demands for dowry and harassment for dowry payments, which is a significant issue in India.",
            "Relevant Law: Dowry Prohibition Act, 1961, makes dowry demands and harassment for dowry payments illegal.",
            [
              "Do:",
              "  - Report dowry demands and harassment to the police and provide evidence.",
              "  - Seek legal assistance to protect your rights and document any demands.",
              "  - Support and empower victims to speak out against dowry harassment.",
            ],
            [
              "Don't:",
              "  - Give in to dowry demands; it's illegal and unethical.",
              "  - Ignore or dismiss dowry harassment; report it to the authorities.",
              "  - Engage in dowry transactions; they are against the law.",
            ],
          ),
          buildCase(
            "Child Custody",
            "Child custody disputes often arise during divorces or separations when parents contest the custody and upbringing of their children.",
            "Relevant Law: The Hindu Minority and Guardianship Act, 1956, and the Guardians and Wards Act, 1890, provide legal provisions for child custody matters.",
            [
              "Do:",
              "  - Prioritize the child's best interests in all decisions.",
              "  - Consult with a family law attorney to understand your rights and responsibilities.",
              "  - Consider mediation and negotiation for an amicable resolution.",
            ],
            [
              "Don't:",
              "  - Use the child as a pawn in a bitter custody battle; it can harm the child.",
              "  - Violate court orders related to child custody and visitation.",
              "  - Speak negatively about the other parent in front of the child.",
            ],
          ),
          buildCase(
            "Maintenance and Alimony",
            "Maintenance and alimony disputes involve financial support sought by one spouse from the other, especially after a divorce.",
            "Relevant Law: Various personal laws govern maintenance and alimony, including Section 125 of the Code of Criminal Procedure, 1973.",
            [
              "Do:",
              "  - Understand your financial rights and obligations under the law.",
              "  - Consult with a lawyer to negotiate and seek legal assistance if needed.",
              "  - Maintain clear financial records to support your claims.",
            ],
            [
              "Don't:",
              "  - Avoid your financial responsibilities or refuse to provide necessary support.",
              "  - Hide or misrepresent your income or assets during alimony negotiations.",
              "  - Use alimony as a means of control or revenge.",
            ],
          ),
          buildCase(
            "Marital Property Disputes",
            "Disputes over the division of marital assets upon divorce can be contentious, as it involves determining how property should be shared.",
            "Relevant Law: The division of marital property is usually governed by personal laws and can vary depending on the religion of the parties involved.",
            [
              "Do:",
              "  - Compile a list of marital assets and debts for a fair division.",
              "  - Consider mediation or legal advice to resolve disputes and reach an agreement.",
              "  - Be willing to negotiate and compromise to achieve a fair outcome.",
            ],
            [
              "Don't:",
              "  - Conceal or dispose of marital property to deprive your spouse.",
              "  - Engage in destructive behavior, such as damaging or selling marital assets.",
              "  - Refuse to cooperate with the legal process of property division.",
            ],
          ),
          buildCase(
            "Annulment and Divorce",
            "Annulment and divorce are legal processes to dissolve a marriage, and disputes can arise over grounds for divorce, property division, and more.",
            "Relevant Law: The Hindu Marriage Act, 1955, and the Special Marriage Act, 1954, govern divorce and annulment in India.",
            [
              "Do:",
              "  - Seek legal advice to understand the divorce or annulment process and your rights.",
              "  - Consider alternative dispute resolution methods like mediation for an amicable resolution.",
              "  - Prioritize the well-being of any children involved and their access to both parents.",
            ],
            [
              "Don't:",
              "  - Use the legal process to seek revenge or harm your spouse.",
              "  - Make false accusations or engage in character assassination during legal proceedings.",
              "  - Disobey court orders or engage in contentious behavior that hinders the process.",
            ],
          ),
          buildCase(
            "Adoption and Guardianship",
            "Issues related to adoption, guardianship, and custody of minors often require legal intervention, ensuring the child's best interests.",
            "Relevant Law: The Hindu Adoption and Maintenance Act, 1956, and the Guardians and Wards Act, 1890, govern adoption and guardianship matters.",
            [
              "Do:",
              "  - Follow the legal adoption procedures to ensure the child's best interests.",
              "  - Consult with a family lawyer to navigate adoption and guardianship laws.",
              "  - Advocate for the child's welfare, safety, and best interests throughout the process.",
            ],
            [
              "Don't:",
              "  - Attempt illegal adoptions or guardianships that may harm the child's welfare.",
              "  - Ignore the legal requirements and safeguards in adoption and guardianship proceedings.",
              "  - Make hasty or ill-informed decisions without considering the child's future.",
            ],
          ),
          buildCase(
            "Inheritance and Succession",
            "Inheritance and succession disputes relate to the distribution of a deceased family member's assets, which can lead to legal conflicts.",
            "Relevant Law: Inheritance and succession matters are often governed by personal laws, such as the Hindu Succession Act, 1956, and the Indian Succession Act, 1925.",
            [
              "Do:",
              "  - Make a legally valid will to clarify your intentions for property distribution.",
              "  - Consult with a lawyer to understand inheritance and succession laws.",
              "  - Ensure that the distribution of assets is in accordance with legal provisions and personal beliefs.",
            ],
            [
              "Don't:",
              "  - Engage in fraudulent practices or illegal transfers of assets.",
              "  - Disregard the legal requirements for creating and executing a will.",
              "  - Create conflict and disputes among family members through unclear or contested wills.",
            ],
          ),
          buildCase(
            "Maintenance of Senior Citizens",
            "The Maintenance and Welfare of Parents and Senior Citizens Act addresses issues related to the maintenance of senior citizens by their children or relatives.",
            "Relevant Law: The Maintenance and Welfare of Parents and Senior Citizens Act, 2007, provides legal provisions for the maintenance of senior citizens.",
            [
              "Do:",
              "  - Know your rights and seek assistance from the authorities if necessary.",
              "  - Seek a legal remedy if you are being denied maintenance or mistreated.",
              "  - Raise awareness about the rights and needs of senior citizens and promote their well-being.",
            ],
            [
              "Don't:",
              "  - Tolerate abuse or neglect; report it to the appropriate authorities.",
              "  - Disregard the legal provisions for the maintenance and welfare of senior citizens.",
              "  - Retaliate or engage in confrontations with family members; seek legal solutions.",
            ],
          ),
          buildCase(
            "Child Marriage",
            "Child marriage is illegal in India, and laws are in place to prevent and address this issue, as it can have severe consequences for minors.",
            "Relevant Law: The Prohibition of Child Marriage Act, 2006, and various other state laws govern child marriage and its prevention.",
            [
              "Do:",
              "  - Report any instances of child marriage to the authorities.",
              "  - Advocate for child rights, education, and awareness to prevent child marriages.",
              "  - Support organizations and initiatives working to eliminate child marriage.",
            ],
            [
              "Don't:",
              "  - Participate in or support child marriages; they are illegal and harmful.",
              "  - Ignore signs of child marriage; report it to protect the minor involved.",
              "  - Underestimate the long-term consequences and harms of child marriage.",
            ],
          ),
        ],
      ),
    );
  }

  Widget buildCase(
    String title,
    String description,
    String relevantLaw,
    List<String> doList,
    List<String> dontList,
  ) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            ExpansionTile(
              title: Text(
                title,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      description,
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      relevantLaw,
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Do:",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: doList
                          .map((item) => ListTile(
                                contentPadding: const EdgeInsets.all(0),
                                title: Text(item),
                              ))
                          .toList(),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Don't:",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: dontList
                          .map((item) => ListTile(
                                contentPadding: const EdgeInsets.all(0),
                                title: Text(item),
                              ))
                          .toList(),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: FamliylawPage(),
  ));
}
