import 'package:comics_project/pages/films/widget/widget_films.dart';
import 'package:flutter/material.dart';

class FilmsPage extends StatefulWidget {
  const FilmsPage({super.key});

  @override
  State<FilmsPage> createState() => _FilmsPageState();
}

class _FilmsPageState extends State<FilmsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF15232E),
      body: SingleChildScrollView(
        child: Container(
        height: 1229,
        width: 400,//375?
        child: const Stack(
          children: [
            /*Positionnement du texte d'accueil*/
            Positioned(
                left: 32,
                top:34,
                width: 290,
                height: 82,
                child: Center(
                  child: Text('Films les plus populaires ',
                    style: TextStyle(
                        fontFamily: 'Nunito',fontSize: 30,color :Colors.white, fontWeight: FontWeight.bold
                      ),
                    ),
                  )
              ),
            Widget_films(),
            ],
          ),
        ),
      ),
    );
  }
}
