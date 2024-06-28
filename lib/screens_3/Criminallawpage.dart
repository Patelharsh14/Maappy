import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: CriminallawPage(),
  ));
}

class CriminallawPage extends StatefulWidget {
  const CriminallawPage({Key? key}) : super(key: key);

  @override
  _CriminallawPageState createState() => _CriminallawPageState();
}

class _CriminallawPageState extends State<CriminallawPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Criminal Cases"),
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
          title: "Murder (Section 302 IPC)",
          details: "a. Description: Murder is the intentional killing of another person. It is a heinous crime with severe penalties, including life imprisonment or the death penalty in some cases.\nb. Do's:\ni. Preserve the crime scene; avoid tampering with evidence.\nii. Promptly report the crime to the police.\niii. Cooperate with the investigation.\nc. Don'ts:\ni. Do not destroy or tamper with evidence.\nii. Do not attempt to hide or flee from the crime scene.\niii. Do not engage in vigilantism or take the law into your own hands.",
        ),
        ElevatedListTile(
          title: "Rape (Sections 375 and 376 IPC)",
          details: "a. Description: Rape is a sexual assault crime involving non-consensual sexual intercourse. It is a serious offense with significant penalties.\nb. Do's:\ni. Encourage survivors to seek medical help and counseling.\nii. Preserve evidence like clothing or objects related to the incident.\niii. Report the crime to the police.\nc. Don'ts:\ni. Do not blame or shame the survivor.\nii. Do not engage in victim-blaming.\niii. Do not coerce or intimidate the survivor into silence.",
        ),
        ElevatedListTile(
          title: "Theft (Section 378 IPC)",
          details: "a. Description: Theft is the unlawful taking of another person's property without their consent. Penalties vary based on the value of the stolen property.\nb. Do's:\ni. Report the theft to the police.\nii. Provide the police with any information that may help recover the stolen property.\nc. Don'ts:\ni. Do not take the law into your own hands to recover the stolen property.\nii. Do not make false accusations against someone without evidence.",
        ),
        ElevatedListTile(
          title: "Robbery (Section 392 IPC)",
          details: "a. Description: Robbery involves using force or intimidation to steal from a person or property. It is a more serious crime than theft and can result in significant imprisonment.\nb. Do's:\ni. Prioritize personal safety during a robbery.\nii. Cooperate with the robber to avoid harm.\niii. Report the crime to the police.\nc. Don'ts:\ni. Do not resist violently, as it can lead to more harm.\nii. Do not try to chase or apprehend the robber without proper training and assistance from the police.",
        ),
        ElevatedListTile(
          title: "Kidnapping (Section 360 IPC)",
          details: "a. Description: Kidnapping involves unlawfully confining someone against their will. Penalties depend on the purpose of the abduction.\nb. Do's:\ni. Report the kidnapping to the police immediately.\nii. Provide all relevant information about the incident.\nc. Don'ts:\ni. Do not negotiate with kidnappers without police involvement.\nii. Do not attempt to rescue the victim on your own, as it can be dangerous.",
        ),
        ElevatedListTile(
          title: "Dowry-related offenses (Various Sections in IPC)",
          details: "a. Description: Dowry-related crimes, such as dowry deaths and harassment for dowry, are illegal in India. The penalties vary based on the specific circumstances.\nb. Do's:\ni. Report cases of dowry harassment and dowry deaths to the police.\nii. Support and protect the victim from further harm.\nc. Don'ts:\ni. Do not condone or ignore dowry-related abuse.\nii. Do not pressure the victim to continue in an abusive marriage.",
        ),
        ElevatedListTile(
          title: "Cybercrime (Various Sections in IT Act and IPC)",
          details: "a. Description: Cybercrimes encompass various offenses like hacking, online fraud, and identity theft, which have become more prevalent with increased technology usage.\nb. Do's:\ni. Report cybercrimes to the relevant authorities.\nii. Preserve evidence, such as screenshots or logs.\nc. Don'ts:\ni. Do not engage in cyberbullying, hacking, or other illegal online activities.\nii. Do not share personal information online without proper precautions.",
        ),
        ElevatedListTile(
          title: "Drug trafficking and possession (Narcotic Drugs and Psychotropic Substances Act)",
          details: "a. Description: Drug offenses involve the possession, sale, or trafficking of illegal drugs, with severe penalties.\nb. Do's:\ni. Comply with drug laws and regulations.\nii. Seek legal assistance if accused of drug-related offenses.\nc. Don'ts:\ni. Do not engage in the trafficking or possession of illegal drugs.\nii. Do not consume or distribute drugs without a prescription or authorization.",
        ),
        ElevatedListTile(
          title: "Corruption (Prevention of Corruption Act)",
          details: "a. Description: Corruption and bribery are criminal offenses under various Indian laws, including the Prevention of Corruption Act.\nb. Do's:\ni. Report instances of corruption to the relevant anti-corruption agencies.\nii. Cooperate with investigators and provide evidence if available.\nc. Don'ts:\ni. Do not offer or accept bribes or engage in corrupt practices.\nii. Do not interfere with anti-corruption investigations.",
        ),
        ElevatedListTile(
          title: "Domestic violence (Protection of Women from Domestic Violence Act)",
          details: "a. Description: Domestic violence against women and family members is a crime in India, with legal remedies provided under the Protection of Women from Domestic Violence Act.\nb. Do's:\ni. Seek legal protection and support if you are a victim of domestic violence.\nii. Report incidents to the police or seek restraining orders.\nc. Don'ts:\ni. Do not tolerate or justify domestic violence.\nii. Do not retaliate with violence; instead, seek legal remedies.",
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
