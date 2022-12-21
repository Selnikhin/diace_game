import 'package:flutter/material.dart';

class DiceScreen extends StatefulWidget {
  const DiceScreen({Key? key}) : super(key: key);

  @override
  State<DiceScreen> createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen> {
  bool isGameStarted = false;

  final Map<String, int> deckOfCube = {
    "cube/Dice/dice1.png": 1,
    "cube/Dice/dice2.png": 2,
    "cube/Dice/dice3.png": 3,
    "cube/Dice/dice4.png": 4,
    "cube/Dice/dice5.png": 5,
    "cube/Dice/dice6.png": 6,

  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isGameStarted ? SafeArea(child: Center(
        child: Column(
          children: [
            Container(height: 200,child: GridView.builder( gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
                itemCount: cards.length,
                //нужно указать сколько будет items
                //  physics: NeverScrollableScrollPhysics(), // Для того что бы GridView не скролил

                itemBuilder: (context, index) {
                  //возвращаем виджет
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: cards[index],
                  );
                }),,)

          ],
        ),
      ),) : Center(child: MaterialButton(
        onPressed: (){},child:  Text('Start Game'),
        color: Colors.red,
      ),)
    );
  }
}
