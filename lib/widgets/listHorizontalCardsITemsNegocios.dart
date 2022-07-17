import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Cardsitem2 extends StatelessWidget {
  const Cardsitem2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text("Restaurantes para descubrir",
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
              Text("Sugeridos para disfrutar nuevas experiencias",
                  style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey)),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 220.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              cardPublicidadNegocios(
                context: context,
                titulo: "Tequewins",
                puntuacion: "4.5",
                tiempo: "30-45 min",
                urlPortadad:
                    "https://www.lavanguardia.com/files/article_main_microformat/uploads/2020/02/20/5e997b62999d2.jpeg",
                urlNegocio:
                    "https://i.pinimg.com/originals/1e/a4/4e/1ea44ec76e50f6ef37ca24eee4bd5486.jpg",
              ),
              cardPublicidadNegocios(
                context: context,
                titulo: "Heladeria Alessandro Rivadavia",
                puntuacion: "4.7",
                tiempo: "15-30 min",
                urlPortadad:
                    "https://us.cdn.eltribuno.com/112018/1541203650859.jpg",
                urlNegocio:
                    "https://media-cdn.tripadvisor.com/media/photo-s/13/80/e5/39/te-esperamos.jpg",
              ),
              cardPublicidadNegocios(
                context: context,
                titulo: "Viejo Patrón",
                puntuacion: "4.2",
                tiempo: "40-60 min",
                urlPortadad:
                    "https://okdiario.com/img/2018/08/20/cordero-asado-con-hortalizas-655x368.jpg",
                urlNegocio:
                    "https://media-cdn.tripadvisor.com/media/photo-s/15/c1/94/fe/our-restaurant-fire-side.jpg",
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// ignore: camel_case_types
class cardPublicidadNegocios extends StatelessWidget {
  final String titulo;
  final String puntuacion;
  final String tiempo;
  final String urlPortadad;
  final String urlNegocio;
  final BuildContext context;
  const cardPublicidadNegocios(
      {Key? key,
      required this.context,
      required this.titulo,
      required this.puntuacion,
      required this.tiempo,
      required this.urlPortadad,
      required this.urlNegocio})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0, top: 8.0, left: 8.0),
      child: Card(
        color: Colors.white,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        elevation: 5.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                width: 300.0,
                height: 125.0,
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: CachedNetworkImage(
                    fadeInDuration: Duration(milliseconds: 200),
                    fit: BoxFit.cover,
                    imageUrl: urlPortadad,
                    placeholder: (context, urlImage) =>
                        Container(color: Colors.grey),
                    errorWidget: (context, urlImage, error) =>
                        Center(child: Container(color: Colors.grey)))),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 0.0,
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(shape: BoxShape.circle),
                          child: CachedNetworkImage(
                              fadeInDuration: Duration(milliseconds: 200),
                              fit: BoxFit.cover,
                              imageUrl: urlNegocio,
                              placeholder: (context, urlImage) =>
                                  Container(color: Colors.grey),
                              errorWidget: (context, urlImage, error) => Center(
                                  child: Container(color: Colors.grey)))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        titulo != ""
                            ? Text(titulo,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))
                            : Container(),
                        Row(
                          children: [
                            Icon(Icons.star, size: 12.0, color: Colors.green),
                            Text(puntuacion,
                                style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold)),
                            Text("  ",
                                style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold)),
                            Text(tiempo,
                                style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
  
