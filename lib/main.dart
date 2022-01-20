import 'package:flutter/material.dart';
import 'questions.dart';

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
  List<String> questions = [
    "Vous venez de crevez un pneu à St André. Vous n'avez pas de téléphone vous décidez de faire du stop. Une ford fiesta rouge s'arrête et le conducteur vous demande si vous voulez qu'il vous dépanne.",
    "Il acquiesce de la tête sans faire attention à la question.",
    "Lorsqu'il commence à conduire, il vous demande d'ouvrir la boite à gant. À l’intérieur, vous trouverez un couteau ensanglanté, deux doigts coupés et un CD de T-Matt.",
    " Woaw ! Quelle évasion ! ",
    "En traversant la route du littoral, vous réfléchissez à la sagesse douteuse de poignarder quelqu’un pendant qu’il conduit une voiture dans laquelle vous êtes.",
  ];

  int questionNumber = 0;

  List<String> etape = [
    "Vous lui remerciez et vous montez dans la voiture",
    "Vous lui demandez s'il n'est pas un meurtrier avant !",
    "Au moins il est honnête. Vous montez ! ",
    "Attends, mais je sais comment changer un pneu voyons !",
    "J'adore T-Matt, je lui donne le CD.",
    " C'est lui ou moi, je prends le couteau et je le poignarde.",
  ];

  int etapeNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        //premiere page ETAPE 0
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Center(
              child: Text(
                questions[questionNumber],
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),

        //bouton avec remerciement...ETAPE 0
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.lightBlueAccent.shade100),
              ),
              onPressed: () {
                setState(() {
                  questions[questionNumber];
                  questionNumber++;
                });
              },
              child: Text(
                etape[0],
                style: TextStyle(
                  color: Colors.blueGrey,
                ),
              ),
            ),
          ),
        ),

        // bouton ... s'il n'est pas un meurtrier... ETAPE 0
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.lightBlueAccent.shade100),
              ),
              onPressed: () {
                setState(() {
                  questions[questionNumber];
                  questionNumber++;
                });
              },
              child: Text(
                etape[0],
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
