import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Scaffold: Estuctura visual basica d'un Meterial Design
    return Scaffold(
      //AppBar: Una barra d'aplicacions consisteix en una barra d'eines i potencialment altres ginys, com TabBar i FlexibleSpaceBar.
      appBar: AppBar(
        title: const Text('TeckWeek 2023: Flutter'),
        backgroundColor: Colors.indigo,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Mostrar Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Aixo es una snackbar')));
            },
          ),
        ],
      ),
      //FloatingActionButton: Un botó d'acció flotant (FloatingActionButton) és un botó d'icona circular que sura sobre el contingut per promoure una acció principal a l'aplicació.
      floatingActionButton: FloatingActionButton(
        onPressed: () {

          //Finestra emergent
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              content: Text('Aixo es un FloatingActionButton'),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.check),
                  onPressed: () {
                    Navigator.of(context).pop('Ok');
                  },
                )
              ],
            ),
          );
        },
        backgroundColor: Colors.purple,
        child: const Icon(Icons.info_outline),
      ),

      //SafeArea: Permet que el contiogut no es sobresurti a parts no visibles per le HUD del dispositiu.
      body: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10, top: 8),
              child: Text(
                'Container',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            Container(
              height: 100,
              color: Colors.indigo,
              alignment: Alignment.center,
              //decoration: BoxDecoration(
              //  shape: BoxShape.circle,
              //  color: Colors.amber,
              //),
              margin: const EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Hola Flutter!',
                //TextStyle li dona estil al nostre text
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontFamily: 'MeriendaOne',
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10, top: 15),
              child: Text(
                'Columnes',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            //Permet crear una llista amb els widgets que volguem sense que ens sorti error sobresortin de la pantalla
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    color: Colors.green,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(10.0),
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Col 1',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    color: Colors.red,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(10.0),
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Col 2',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    color: Colors.yellow,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(10.0),
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Col 3',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    color: Colors.blue,
                    alignment: Alignment.center,
                    //decoration: BoxDecoration(
                    //  shape: BoxShape.circle,
                    //  color: Colors.amber,
                    //),
                    margin: const EdgeInsets.all(10.0),
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Col 4',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    color: Colors.purple,
                    alignment: Alignment.center,
                    //decoration: BoxDecoration(
                    //  shape: BoxShape.circle,
                    //  color: Colors.amber,
                    //),
                    margin: const EdgeInsets.all(10.0),
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Col 5',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    color: Colors.cyan,
                    alignment: Alignment.center,
                    //decoration: BoxDecoration(
                    //  shape: BoxShape.circle,
                    //  color: Colors.amber,
                    //),
                    margin: const EdgeInsets.all(10.0),
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Col 6',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    color: Colors.black,
                    alignment: Alignment.center,
                    //decoration: BoxDecoration(
                    //  shape: BoxShape.circle,
                    //  color: Colors.amber,
                    //),
                    margin: const EdgeInsets.all(10.0),
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Col 7',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    color: Colors.orange,
                    alignment: Alignment.center,
                    //decoration: BoxDecoration(
                    //  shape: BoxShape.circle,
                    //  color: Colors.amber,
                    //),
                    margin: const EdgeInsets.all(10.0),
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Col 8',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    color: Colors.redAccent,
                    alignment: Alignment.center,
                    //decoration: BoxDecoration(
                    //  shape: BoxShape.circle,
                    //  color: Colors.amber,
                    //),
                    margin: const EdgeInsets.all(10.0),
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Col 9',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    color: Colors.greenAccent,
                    alignment: Alignment.center,
                    //decoration: BoxDecoration(
                    //  shape: BoxShape.circle,
                    //  color: Colors.amber,
                    //),
                    margin: const EdgeInsets.all(10.0),
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Col 10',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10, top: 15),
              child: Text(
                'Imatges i icones',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  'assets/images/image.jpg',
                  width: 200,
                  height: 200,
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.pink,
                  size: 30.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
                Icon(
                  Icons.audiotrack,
                  color: Colors.green,
                  size: 30.0,
                ),
                Icon(
                  Icons.beach_access,
                  color: Colors.blue,
                  size: 36.0,
                ),
              ],
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10, top: 15, bottom: 15),
              child: Text(
                'Botons',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  iconSize: 72,
                  icon: const Icon(Icons.celebration_outlined),
                  tooltip: 'Increase volume by 10',
                  onPressed: () {},
                ),
                TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.indigo),
                  ),
                  onPressed: () {},
                  child: Text(
                    'TextButton',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                ElevatedButton(
                  child: Text("ElevatedButton"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.indigo,
                    elevation: 0,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
