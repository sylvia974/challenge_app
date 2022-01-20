import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white54,
        body: SafeArea(
          child: ChallengeApp(),
        ),
      ),
    ),
  );
}

class ChallengeApp extends StatefulWidget {
  const ChallengeApp({Key? key}) : super(key: key);

  @override
  _ChallengeAppState createState() => _ChallengeAppState();
}

class _ChallengeAppState extends State<ChallengeApp> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        //premiere page etape 1
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Center(
              child: Text(
                "Vous venez de crevez un pneu à St André. Vous n'avez pas de téléphone vous décidez de faire du stop. "
                "Une ford fiesta rouge s'arrête et le conducteur vous demande si vous voulez qu'il vous dépanne.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
        //bouton avec remerciment...

        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.lightBlueAccent.shade100),
              ),
              onPressed: () {},
              child: Text(
                "Vous lui remerciez et vous montez dans la voiture",
                style: TextStyle(
                  color: Colors.blueGrey,
                ),
              ),
            ),
          ),
        ),
        // bouton ... s'il n'est pas un meurtrier
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.lightBlueAccent.shade100),
              ),
              onPressed: () {},
              child: Text(
                "Vous lui demandez s'il n'est pas un meurtrier avant !",
                style: TextStyle(
                  color: Colors.blueGrey,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
