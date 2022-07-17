import 'package:flutter/material.dart';

import 'package:stream_agram/widgets/Listbutton.dart';
import 'package:stream_agram/widgets/listHorizontalCardsITemsNegocios.dart';
import 'package:stream_agram/widgets/listHorizontalCardsSugerencias.dart';

import '../widgets/botonbusqueda.dart';

class Pedido extends StatelessWidget {
  const Pedido({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Madero 149',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.campaign, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: const [
            SearchButton(),
            Buttons(),
            Sugerencias(),
            Cardsitem2(),
            Sugerencias(),
          ],
        ),
      ),
    );
  }
}
