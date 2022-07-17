// ignore: file_names
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Sugerencias extends StatelessWidget {
  const Sugerencias({Key? key}) : super(key: key);

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
              Text("Sugerencias para vos",
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
              Text("Recomendados para tu ubicación",
                  style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey)),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 0.0),
          width: double.infinity,
          height: 300.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              cardSugerencias(
                  ubicacion: "30-45 min",
                  titulo: "Mega Boom Bacon Doble",
                  precio: "\$ 199",
                  url:
                      "https://www.mostazaweb.com.ar/wp-content/uploads/2020/08/Mega-BOOM-Bacon-Doble-2-1.jpg"),
              cardSugerencias(
                  ubicacion: "República de caseros 30-45 mins",
                  titulo: "Milanesa de ternera a la napolitana",
                  precio: "\$ 590",
                  url:
                      "https://www.conclusion.com.ar/wp-content/uploads/2018/08/Milanesas-napolitanas.jpg"),
              cardSugerencias(
                  ubicacion: "El Once Liniers 45-60 mins",
                  titulo: "Matambrito de cerdo a la pizza con 2 guarniciones",
                  precio: "\$ 410",
                  url: "https://i.ytimg.com/vi/-LPGCxY-kxw/maxresdefault.jpg"),
              cardSugerencias(
                  ubicacion: "La Payada Villa Luro 30-45 mins",
                  titulo: "Promo - 6 empanadas",
                  precio: "\$ 510",
                  url:
                      "https://simplementerecetas.com/wp-content/uploads/2019/11/Empanadas-de-carne-con-queso-e1574264107672.jpg"),
            ],
          ),
        ),
      ],
    );
  }
}

// ignore: camel_case_types
class cardSugerencias extends StatelessWidget {
  final String ubicacion;
  final String titulo;
  final String precio;
  final String url;

  const cardSugerencias(
      {Key? key,
      required this.ubicacion,
      required this.titulo,
      required this.precio,
      required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0, top: 8.0, left: 8.0),
      child: Card(
        elevation: 5.0,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        child: InkWell(
          child: Container(
            color: Colors.white,
            width: 200.0,
            height: 250.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    width: 200.0,
                    height: 175.0,
                    child: CachedNetworkImage(
                        fadeInDuration: Duration(milliseconds: 200),
                        fit: BoxFit.cover,
                        imageUrl: url,
                        placeholder: (context, urlImage) =>
                            Container(color: Colors.grey),
                        errorWidget: (context, urlImage, error) =>
                            Center(child: Container(color: Colors.grey)))),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ubicacion != ""
                            ? Text(ubicacion,
                                style: TextStyle(
                                    fontSize: 12.0, color: Colors.grey[600]),
                                maxLines: 1)
                            : Container(),
                        titulo != ""
                            ? Text(titulo,
                                style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal),
                                maxLines: 2)
                            : Container(),
                        precio != ""
                            ? Text(precio,
                                style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal),
                                maxLines: 1)
                            : Container(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
