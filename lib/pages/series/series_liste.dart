import 'package:comics_project/pages/series/widget/widget_series.dart';
import 'package:flutter/material.dart';


class SeriesPage extends StatefulWidget {
  const SeriesPage({super.key});

  @override
  State<SeriesPage> createState() => _SeriesPageState();
}

class _SeriesPageState extends State<SeriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF15232E),
      body: SingleChildScrollView(
        child: Container(
          height: 1229,
          width: 400,//375?
          child: Stack(
            children: [
              /*Positionnement du texte d'accueil*/
              Positioned(
                  left: 32,
                  top:34,
                  width: 290,
                  height: 82,
                  child: Center(
                    child: Text('Séries les plus populaires ',
                      style: TextStyle(
                          fontFamily: 'Nunito',fontSize: 30,color :Colors.white, fontWeight: FontWeight.bold
                      ),
                    ),
                  )
              ),

              Widget_series(),
            ],
          ),
        ),
      ),
    );
  }
}
