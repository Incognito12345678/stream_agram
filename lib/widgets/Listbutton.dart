import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color colorButton = Color.fromARGB(255, 242, 234, 234);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buttonCircle(
                  heroTag: "heroTag0",
                  icon: Icons.restaurant,
                  texto: "Testaurantes",
                  colorButonText: Colors.red[400]!,
                  colorButton: colorButton,
                  colorText: Colors.black),
              buttonCircle(
                  heroTag: "heroTag1",
                  icon: Icons.shopping_basket,
                  texto: "Mercados",
                  colorButonText: Colors.green[400]!,
                  colorButton: colorButton,
                  colorText: Colors.black),
              buttonCircle(
                  heroTag: "heroTag2",
                  icon: Icons.local_bar,
                  texto: "Bebidas",
                  colorButonText: Colors.pink[400]!,
                  colorButton: colorButton,
                  colorText: Colors.black),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buttonCircle(
                    heroTag: "heroTag3",
                    icon: FontAwesomeIcons.candyCane,
                    texto: "Kioscos",
                    colorButonText: Colors.pinkAccent,
                    colorButton: colorButton,
                    colorText: Colors.black),
                buttonCircle(
                    heroTag: "heroTag4",
                    icon: Icons.local_cafe,
                    texto: "Café & Deli",
                    colorButonText: Colors.brown[400]!,
                    colorButton: colorButton,
                    colorText: Colors.black),
                buttonCircle(
                    heroTag: "heroTag5",
                    icon: Icons.dialpad,
                    texto: "Otros",
                    colorButonText: Colors.blue[400]!,
                    colorButton: colorButton,
                    colorText: Colors.black),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class buttonCircle extends StatelessWidget {
  final String heroTag;
  final IconData icon;
  final String texto;
  final Color colorButonText;
  final Color colorButton;
  final Color colorText;

  buttonCircle(
      {Key? key,
      required this.heroTag,
      required this.icon,
      required this.texto,
      required this.colorButonText,
      required this.colorButton,
      required this.colorText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    double size = 75.0;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              width: size,
              height: size,
              child: FloatingActionButton(
                heroTag: heroTag,
                onPressed: () {},
                elevation: 0.0,
                child: Icon(icon, color: colorButonText, size: 30.0),
                backgroundColor: colorButton,
              )),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Container(
                  width: size - 5,
                  child: Text(texto,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: colorText,
                          fontSize: 11.0,
                          fontWeight: FontWeight.bold)))),
        ],
      ),
    );
  }
  }

